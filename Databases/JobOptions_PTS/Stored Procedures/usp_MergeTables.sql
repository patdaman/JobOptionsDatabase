-- =============================================
-- Author:		Patrick de los Reyes
-- Create date: 2018-06-26
-- Description:	Merge Like Tables into single master table with all columns
-- =============================================
CREATE PROCEDURE [dbo].[usp_MergeTables] 
	-- Add the parameters for the stored procedure here
	@Table VARCHAR(128) = '', 
	@TableSchema VARCHAR(128) = '[dbo]',
	@TargetTable VARCHAR(128) = '',
	@TargetTableSchema VARCHAR(128) = '[dbo]',
	@MigrateData BIT = 0,
	@PrintOnly BIT = 1,
	@Database VARCHAR(128) = 'PTS'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @SQL NVARCHAR(MAX), @CRLF CHAR(2) = Char(13) + Char(10);

	DECLARE @Target_Key_Columns TABLE (TABLE_NAME SYSNAME, COLUMN_NAME SYSNAME, DATA_TYPE SYSNAME, CHARACTER_MAXIMUM_LENGTH INT, IS_NULLABLE SYSNAME, NUMERIC_PRECISION INT, NUMERIC_SCALE INT, ORDINAL_POSITION INT, ColumnOrdinalPosition TINYINT, CONSTRAINT_TYPE SYSNAME)
	DECLARE @Table_Key_Columns TABLE (TABLE_NAME SYSNAME, COLUMN_NAME SYSNAME, DATA_TYPE SYSNAME, CHARACTER_MAXIMUM_LENGTH INT, IS_NULLABLE SYSNAME, NUMERIC_PRECISION INT, NUMERIC_SCALE INT, ORDINAL_POSITION INT, ColumnOrdinalPosition TINYINT, CONSTRAINT_TYPE SYSNAME)
	DECLARE @Target_Columns TABLE (TABLE_NAME SYSNAME, COLUMN_NAME SYSNAME)
	DECLARE @Table_Columns TABLE (TABLE_NAME SYSNAME, COLUMN_NAME SYSNAME)

	DECLARE @CreateStatement varchar(MAX)
	DECLARE @SelectKeys varchar(150)
	DECLARE @SelectFirstKey varchar(150)
	DECLARE @SelectDelKeys varchar(150)
	DECLARE @SelectKeyValues varchar(150)
	DECLARE @SelectKeyJoin varchar(150)
	DECLARE @SelectIndexKeys varchar(150)
	DECLARE @SelectInsertKeys varchar(250)

	-- Declare temp variable to fetch records into
	DECLARE @ColumnName varchar(128)
	DECLARE @ColumnType varchar(128)
	DECLARE @ColumnLength smallint
	DECLARE @ColumnNullable varchar(10)
	DECLARE @ColumnCollation sysname
	DECLARE @ColumnPrecision tinyint
	DECLARE @ColumnScale tinyint
	DECLARE @ColumnOrdinalPosition tinyint
	DECLARE @ColumnConstraintType SYSNAME
	DECLARE @IDStatement VARCHAR(128)
	DECLARE @ColumnInsert VARCHAR(MAX)

	SELECT @CreateStatement = ''
			, @ColumnInsert = ''
			, @SelectKeys = ''
			, @SelectKeyJoin = ''
			, @SelectKeyValues = ''
			, @SelectDelKeys = ''
			, @SelectFirstKey = ''
			, @SelectIndexKeys = ''
			, @SelectInsertKeys = ''

	SET @Table = REPLACE(REPLACE(@Table,']',''),'[', '')
	SET @TargetTable = REPLACE(REPLACE(@TargetTable,']',''),'[', '')
	SET @TableSchema = REPLACE(REPLACE(@TableSchema,']',''),'[', '')
	SET @TargetTableSchema = REPLACE(REPLACE(@TargetTableSchema,']',''),'[', '')
	
	INSERT INTO @Table_Columns
	SELECT DISTINCT CT.TABLE_NAME, CT.COLUMN_NAME
		-- , CASE WHEN 
	FROM [INFORMATION_SCHEMA].[COLUMNS] CT
	WHERE CT.TABLE_NAME = @Table
		AND CT.TABLE_SCHEMA = @TableSchema
		AND CT.COLUMN_NAME NOT IN (SELECT COLUMN_NAME 
									FROM INFORMATION_SCHEMA.COLUMNS
									WHERE TABLE_NAME = @TargetTable)

	INSERT INTO @Target_Columns
	SELECT DISTINCT CT.TABLE_NAME, CT.COLUMN_NAME
		-- , CASE WHEN 
	FROM [INFORMATION_SCHEMA].[COLUMNS] CT
	WHERE CT.TABLE_NAME = @TargetTable
		AND CT.TABLE_SCHEMA = @TargetTableSchema
		AND CT.COLUMN_NAME NOT IN (SELECT COLUMN_NAME 
									FROM INFORMATION_SCHEMA.COLUMNS
									WHERE TABLE_NAME = @Table)
	-- IF EXISTS (SELECT 1 FROM @Target_Columns UNION ALL SELECT 1 FROM @Table_Columns)
	BEGIN --> 2

		DECLARE TABLECOLUMNS CURSOR FOR
		SELECT DISTINCT /*@TargetTable,*/ C.COLUMN_NAME, C.DATA_TYPE, C.CHARACTER_MAXIMUM_LENGTH, C.IS_NULLABLE, C.NUMERIC_PRECISION, C.NUMERIC_SCALE
			, C.ORDINAL_POSITION
			--, CASE WHEN TC.CONSTRAINT_TYPE = 'PRIMARY KEY' THEN 'PRIMARY KEY'
			--	WHEN TC.CONSTRAINT_TYPE = 'UNIQUE' THEN 'UNIQUE'
			--	ELSE '' END AS CONSTRAINT_TYPE
			, '' AS CONSTRAINT_TYPE
		FROM [INFORMATION_SCHEMA].[COLUMNS] C
			LEFT OUTER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE AS KCU ON KCU.COLUMN_NAME = C.COLUMN_NAME
			LEFT OUTER JOIN INFORMATION_SCHEMA.TABLE_CONSTRAINTS AS TC ON KCU.CONSTRAINT_SCHEMA = TC.CONSTRAINT_SCHEMA	
		WHERE C.TABLE_NAME = @Table
			AND C.TABLE_SCHEMA = @TableSchema
			-- AND C.COLUMN_NAME NOT IN (SELECT COLUMN_NAME FROM @Target_Columns)
			--WHERE TC.CONSTRAINT_TYPE IN ('PRIMARY KEY','UNIQUE')
			--	AND KCU.TABLE_NAME LIKE @TABLE_NAME
			--	AND C.TABLE_NAME LIKE @TABLE_NAME
				-- AND COLUMNPROPERTY(OBJECT_ID(@TABLE_NAME),c.COLUMN_NAME,'isidentity')<>1
		ORDER BY C.ORDINAL_POSITION

		OPEN TABLECOLUMNS

		FETCH Next FROM TableColumns
			INTO @ColumnName, @ColumnType, @ColumnLength, @ColumnNullable, @ColumnPrecision, @ColumnScale, @ColumnOrdinalPosition, @ColumnConstraintType
		WHILE @@FETCH_STATUS = 0
		BEGIN --> 3
			IF EXISTS (SELECT 1 FROM @Table_Columns WHERE COLUMN_NAME = @ColumnName)
			BEGIN --> 4
				IF (@ColumnType <> 'text' and @ColumnType <> 'ntext' and @ColumnType <> 'image')
				BEGIN --> 5
					IF @ColumnType = 'timestamp'
						SET @CreateStatement = @CreateStatement + '[' + @ColumnName + '] [ROWVERSION] '
					ELSE
						SELECT @CreateStatement = @CreateStatement + '[' + @ColumnName + '] [' + @ColumnType + '] '
							, @SelectKeys = @SelectKeys + '[' + @ColumnName + '], '
							, @SelectKeyValues = @SelectKeyValues + ', ''[' + @ColumnName + ']'''
							, @SelectKeyJoin = @SelectKeyJoin + 'AND i.[' + @ColumnName + '] = d.[' + @ColumnName + '] '
							, @SelectInsertKeys = @SelectInsertKeys + 'COALESCE(d.[' + @ColumnName + '], i.[' + @ColumnName + ']), '
					
					IF @ColumnType in ('binary', 'char', 'nchar', 'nvarchar', 'varbinary', 'varchar')
					BEGIN --> 6
						IF (@ColumnLength = -1)
							Set @CreateStatement = @CreateStatement + '(max) '	 	
						ELSE
							SET @CreateStatement = @CreateStatement + '(' + cast(@ColumnLength as varchar(10)) + ') '	 	
					END --< 6
		
					IF @ColumnType in ('decimal', 'numeric')
						SET @CreateStatement = @CreateStatement + '(' + cast(@ColumnPrecision as varchar(10)) + ',' + cast(@ColumnScale as varchar(10)) + ') '	 	
		
					IF @ColumnNullable = 'NO'
						SET @CreateStatement = @CreateStatement + 'NOT '	 	
		
					SET @CreateStatement = @CreateStatement + 'NULL ' + @CRLF + ' , '
				END --< 5
			END --< 4
			IF (@ColumnType <> 'text' and @ColumnType <> 'ntext' and @ColumnType <> 'image' and @ColumnType <> 'timestamp')		
				SET @ColumnInsert = @ColumnInsert + ' , [' + @ColumnName + ']' + @CRLF	
			FETCH Next FROM TableColumns
				INTO @ColumnName, @ColumnType, @ColumnLength, @ColumnNullable, @ColumnPrecision, @ColumnScale, @ColumnOrdinalPosition, @ColumnConstraintType
		END --< 3

		CLOSE TableColumns
		DEALLOCATE TableColumns

		-- PRINT @CreateStatement
		--IF LEN(@SelectKeyJoin) > 3
		--	SET @SelectKeyJoin = RIGHT(@SelectKeyJoin, LEN(@SelectKeyJoin) - 3)
		--IF LEN(@SelectKeyValues) > 3
		--	SET @SelectKeyValues = '''' + RIGHT(@SelectKeyValues, LEN(@SelectKeyValues) - 3)
		--SET @SelectDelKeys = 'd.' + REPLACE(@SelectKeys,', ',', d.')
		--IF LEN(@SelectDelKeys) > 3
		--	SET @SelectDelKeys = LEFT(@SelectDelKeys,LEN(@SelectDelKeys) - 3)
		--SET @SelectFirstKey = LEFT(@SelectKeys, (CHARINDEX(',',@SelectKeys,0)) - 1)
		--SET @SelectIndexKeys = REPLACE(@SelectKeys, ',',' ASC,')
		--SET @SelectIndexKeys = LEFT(@SelectIndexKeys, LEN(@SelectIndexKeys) - 1)

		SET @SQL = '';
		IF (@CreateStatement NOT LIKE '')
		BEGIN --> 3
			SET @CreateStatement = LEFT(@CreateStatement, LEN(@CreateStatement) - 2)

			IF (@CreateStatement NOT LIKE '%[id]%')
				SET @IDStatement = ' ( id [int]IDENTITY(1,1) NOT NULL ' + @CRLF + ' , '
			ELSE 
				SET @IDStatement = ' ( '
			IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = @TargetTable AND TABLE_SCHEMA = @TableSchema)
			SET @sql = ' IF NOT EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME= ''' + @TargetTable + ''' AND TABLE_SCHEMA = ''' + @TableSchema + ''') ' + @CRLF
				+ ' CREATE TABLE [' + @TableSchema + '].[' + @TargetTable + ']' + @CRLF
				+ @IDStatement
				+ @CreateStatement
				+ ' , [CreateDate] datetime2(3) NOT NULL DEFAULT (GetUTCDate()) ' + @CRLF
				+ ' , [CreateUser] varchar(128) NOT NULL DEFAULT (SYSTEM_USER) ' + @CRLF
				+ ' , [ModifyDate] datetime2(3) NOT NULL DEFAULT (GetUTCDate()) ' + @CRLF
				+ ' , [ModifyUser] varchar(128) NOT NULL DEFAULT (SYSTEM_USER) ' + @CRLF

				--+ ' , CONSTRAINT [PK_' + @TargetTable + '] PRIMARY KEY CLUSTERED ' + @CRLF
				--+ ' ( ' + @CRLF
				--+ '		[id] ASC ' + @CRLF
				--+ '		)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] ' + @CRLF
				--+ ' ) ON [PRIMARY] ' + @CRLF
				--+ @CRLF
				--+ ' CREATE NONCLUSTERED INDEX [IX_' + @TargetTable + '_' + REPLACE(REPLACE(REPLACE(@SelectFirstKey,' ','_'),'[',''),']','') + '] ON [' + @TableSchema + '].[' + @TargetTable + '] ' + @CRLF
				--+ ' (' + @CRLF
				--+ @SelectIndexKeys + @CRLF
				--+ ' )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON
				+ ') ' + @CRLF
			ELSE IF EXISTS (SELECT 1 FROM @Table_Columns)
				SET @SQL = ' ALTER TABLE [' + @TableSchema + '].[' + @TargetTable + ']' + @CRLF
					+ ' ADD ' + @CreateStatement
			PRINT @SQL
			IF (@PrintOnly = 0)
				EXEC (@SQL);
			SET @SQL = ''
		END --< 3
	END --< 2

	IF (@MigrateData = 1 AND @ColumnInsert NOT LIKE '')
	BEGIN --> 2
		SET @ColumnInsert = RIGHT(@ColumnInsert, LEN(@ColumnInsert) - 2)
		SET @SQL = 'INSERT INTO [' + @TargetTableSchema + '].[' + @TargetTable + '] ( ' + @CRLF
			+ @ColumnInsert + ')' + @CRLF
			+ ' SELECT ' + @ColumnInsert + ' FROM [' + @TableSchema + '].[' + @Table + ']' + @CRLF;
		PRINT @SQL
		IF (@PrintOnly = 0)
			EXEC (@SQL);
	END --< 2
END

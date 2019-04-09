-- =============================================
-- Author:		Patrick de los Reyes
-- Create date: 2018-11-14
-- Description:	Delete data from all applicant
--		data tables NOT including 'Type' & 'Code'
--		tables.
-- Parameter: @CreateDate datetime2
--		Date to end truncation, all data before
--		 the CreateDate parameter will be deleted
-- =============================================
CREATE PROCEDURE [dbo].[usb_TruncateData] 
	-- Add the parameters for the stored procedure here
	@CreateDate			datetime2 = NULL,
	@PrintOnly			bit = 1,
	@DisableTriggers	bit = 1
AS
BEGIN --> 1

	--SET @CreateDate = COALESCE(@CreateDate, GETDATE());
	SET @CreateDate = COALESCE(@CreateDate, '2018-11-01');

	DECLARE @SchemaName	sysname,
		@TableName	sysname,
		@sql		varchar(max)

	IF @DisableTriggers = 1
		EXEC sp_MSforeachtable @command1="ALTER TABLE ? DISABLE TRIGGER ALL"

	DECLARE tableCursor CURSOR LOCAL FOR
	-- WITH cte AS
	-- (
		SELECT SCHEMA_NAME(t.schema_id) AS SchemaName, t.name AS TableName
		FROM sys.columns c
		JOIN sys.tables t ON c.object_id = t.object_id
		WHERE c.name = 'CreateDate'
			AND t.name NOT LIKE '%types'
			AND t.name NOT LIKE '%codes'
	OPEN tableCursor

	FETCH NEXT FROM tableCursor INTO @SchemaName, @TableName
	WHILE (@@FETCH_STATUS = 0)
	BEGIN --> 2
		SET @sql = ' ALTER TABLE [' + @SchemaName + '].[' + @TableName + '] NOCHECK CONSTRAINT ALL '
		PRINT @sql
		EXEC (@sql)
		
		SET @sql = 'DELETE FROM [' + @SchemaName + '].[' + @TableName + ']'
			+ ' WHERE CreateDate < ''' + CONVERT(VARCHAR(25), @CreateDate, 120) + ''''
		PRINT @sql
		IF @PrintOnly <> 1
		BEGIN
			EXEC (@sql)
			PRINT 'TRUNCATED DATA FROM ' + @TableName + ' BEFORE ' + CONVERT(VARCHAR(25), @CreateDate, 120)
		END

		SET @sql = ' ALTER TABLE [' + @SchemaName + '].[' + @TableName + '] CHECK CONSTRAINT ALL '
		PRINT @sql
		EXEC (@sql)
		FETCH NEXT FROM tableCursor INTO @SchemaName, @TableName
	END --< 2
	CLOSE tableCursor
	DEALLOCATE tableCursor

	IF @DisableTriggers = 1
		EXEC sp_MSforeachtable @command1="ALTER TABLE ? ENABLE TRIGGER ALL"
END --< 1
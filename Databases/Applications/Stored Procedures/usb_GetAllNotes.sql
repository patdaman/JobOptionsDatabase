-- =============================================
-- Author:		Patrick de los Reyes
-- Create date: 2018-11-02
-- Description:	Retrieve Notes from all tables based on ApplicantId
-- =============================================
CREATE PROCEDURE usb_GetAllNotes 
	-- Add the parameters for the stored procedure here
	@ApplicantId int = 0, 
	@ApplicationId int = 0
AS
BEGIN --> 1

	--DECLARE @NoteTable TABLE
	CREATE TABLE ##NoteTable
	(
		-- Add the column definitions for the TABLE variable here
		ApplicantId int,
		id			int,
		TableName	sysname, 
		Note		varchar(max),
		CreateUser	varchar(128),
		CreateDate	datetime2(0)
	)

	DECLARE @SchemaName	sysname,
		@TableName	sysname,
		@sqlSelect		varchar(max),
		@sql		varchar(max),
		@CombinedQuery	varchar(max)
	SET @ApplicantId = COALESCE(@ApplicantId, 0)
	DECLARE noteCursor CURSOR LOCAL FOR
	-- WITH cte AS
	-- (
		SELECT SCHEMA_NAME(t.schema_id) AS SchemaName, t.name AS TableName
		FROM sys.columns c
		JOIN sys.tables t ON c.object_id = t.object_id
		WHERE c.name = 'Note'
	-- )
	OPEN noteCursor

	FETCH NEXT FROM noteCursor INTO @SchemaName, @TableName
	WHILE (@@FETCH_STATUS = 0)
	BEGIN --> 2
		SET @sql = 'INSERT INTO ##NoteTable (ApplicantId, id, TableName, Note, CreateUser, CreateDate) '
			+ ' SELECT [NoteTable].ApplicantId, [NoteTable].id, ''' + @TableName+''', [NoteTable].Note, '
			+ '		[NoteTable].CreateUser, [NoteTable].CreateDate '
			+ ' FROM [' + @SchemaName + '].[' + @TableName + '] AS [NoteTable] ' 
			+ ' WHERE COALESCE([NoteTable].Note, '''') <> '''' '
			+ '		AND ([NoteTable].ApplicantId = ' + CAST(@ApplicantId AS varchar(16)) + ' OR 0 = ' + CAST(@ApplicantId AS VARCHAR(16)) + ')'
		EXEC (@sql)
		FETCH NEXT FROM noteCursor INTO @SchemaName, @TableName
	END --< 2
	CLOSE noteCursor
	DEALLOCATE noteCursor
	SELECT * FROM ##NoteTable
	DROP TABLE ##NoteTable
END --< 1
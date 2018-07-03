-- =============================================
-- Author:		Patrick de los Reyes
-- Create date: 2018-06-28
-- Description:	Reference the appropriate view based on a JSON object and return the results
-- =============================================
CREATE PROCEDURE usp_GetObject 
	-- Add the parameters for the stored procedure here
	@Name varchar(128) = '', 
	@Parameters varchar(max) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @Name, @Parameters
END

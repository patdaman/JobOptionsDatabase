-- =============================================
-- Author:		Patrick de los Reyes
-- Create date: 2018-06-28
-- Description:	Parse JSON object and send to appropriate queries
-- =============================================
CREATE PROCEDURE [dbo].[usp_PostJson]
	-- Add the parameters for the stored procedure here
	@Title varchar(128) = '', 
	@JSON varchar(max) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	BEGIN TRY
	IF (NOT ISJSON(@JSON) > 0)
		THROW 51000, 'Input parameter object is not valid JSON.', 1;
	
	END TRY
	BEGIN CATCH
		EXEC [dbo].[usp_InsertErrorDetails]
		THROW;
	END CATCH

    -- Return JSON object
	SELECT *
	FROM OPENJSON(@JSON);
END

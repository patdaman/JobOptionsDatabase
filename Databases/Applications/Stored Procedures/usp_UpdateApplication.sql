-- =============================================
-- Author:		Patrick de los Reyes
-- Create date: 2018-07-05
-- Description:	Update
-- =============================================
CREATE PROCEDURE usp_UpdateApplication 
	-- Add the parameters for the stored procedure here
	@Object varchar(128) = '', 
	@JSON varchar(max) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT @Object, @JSON
END



CREATE VIEW [dbo].[vi_Application_JSON]
AS
SELECT * FROM (
	SELECT * FROM
	[dbo].[vi_Applicant]
 FOR JSON AUTO
 ) AS X (applicationId)
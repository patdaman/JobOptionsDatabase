CREATE VIEW [dbo].[vi_ApplicantSearch]
AS
SELECT DISTINCT TOP 20 
	  'vi_ApplicantSearch'									AS [Object]
	  ,	Applicant.[id] 
	  ,	Applicant.[id]										AS ApplicantId
      , Applicant.[FirstName]							
      , Applicant.[LastName]
      , Applicant.[MiddleName]
      , Applicant.[SocialSecurity]
      , Applicant.[Birthdate]
	  , Applicant.[Email]
      , Applicant.[Gender]
      , Applicant.[Ethnicity]
      , Applicant.[Disabled]
      , Applicant.[CreateDate]
      , Applicant.[CreateUser]
	  , Phone.PhoneNumber
	  , Phone.PhoneType
	  , [Application].[id]	    							AS ApplicationId
      , [Application].[ApplicationDate]
      , [Application].[Positions]
      , [Application].[Consideration]
      , [Application].[Status]
      , [Application].[Hired]
      , [Application].[PreviousApplication]
      , [Application].[PreviousEmployment]
      , [Application].[PreviouslyTerminated]
      , [Application].[CanWork]
	  , [Application].[Rehabilitation]
	  , [Application].[IsPublicAssistance]
	  , [Application].[AvailableDate]
      , [Application].[OnCall]
      , [Application].[Temporary]
      , [Application].[Weekends]
      , [Application].[Evenings]
      , [Application].[Nights]
      , [Application].[Referral]
FROM [dbo].[Applicant] [Applicant]
	--LEFT OUTER JOIN (SELECT *, RANK() OVER (PARTITION BY App.CreateDate ORDER BY App.CreateDate DESC) AS Date
	--				 FROM [dbo].[Application] App) [Application] ON Applicant.id = [Application].ApplicantId
	OUTER APPLY (SELECT TOP 1 *
					 FROM [dbo].[Application] App
					 WHERE [Applicant].id = [App].ApplicantId
					 ORDER BY App.CreateDate DESC
				) [Application]
	LEFT OUTER JOIN [dbo].[Phone] Phone ON Applicant.id = Phone.ApplicantId AND Phone.OwnerType = 'Applicant' AND Phone.isDefault = 1
	OUTER APPLY (SELECT TOP 1 *
					 FROM [dbo].[Address] A
					 WHERE [Applicant].id = [A].ApplicantId AND ([Application].id = [A].ApplicationId OR [A].ApplicationId IS NULL)
					 ORDER BY A.ModifyDate DESC
				) [Address]
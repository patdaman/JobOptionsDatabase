






CREATE VIEW [dbo].[vi_ApplicantSearch]
AS
SELECT ROW_NUMBER() OVER (ORDER BY [id], [ApplicationId]) AS seq, *
FROM (
	SELECT DISTINCT -- TOP 20 
	  'vi_ApplicantSearch'									AS [Object]
	  ,	[Applicant].[id]									AS ApplicantId
	  , [Application].[id]									AS ApplicationId
      , [Applicant].*
   --   , Applicant.[FirstName]							
   --   , Applicant.[LastName]
   --   , Applicant.[MiddleName]
   --   , Applicant.[SocialSecurity]
   --   , Applicant.[Birthdate]
   --   , Applicant.[Email]
   --   , Applicant.[Disabled]
   --   , Applicant.[HearingImpaired]
   --   , [Application].*
   --   , Applicant.[Gender]
   --   , Applicant.[Ethnicity]
   --   , Applicant.[Disabled]
   --   , Applicant.[CreateDate]
   --   , Applicant.[CreateUser]
	  , [Status].[CurrentStatus]
	  , [Phone].[PhoneNumbers]
      , [Location].[Locations]
	  , [Position].[Positions]
	  , [Document].[Documents]
   --   , [Application].*
      , [Application].[ApplicationDate]
      , [Application].[Consideration]
      --, [Application].[CurrentStatus]
      , [Application].[Hired]
      , [Application].[PreviousApplication]
      , [Application].[PreviousEmployment]
      , [Application].[PreviouslyTerminated]
      , [Application].[CanWork]
	  , [Application].[is18]
	  , [Application].[Rehabilitation]
	  , [Application].[IsPublicAssistance]
	  , [Application].[HasDriversLicense]
	  , [Application].[DriversLicenseState]
	  , [Application].[AvailableDate]
      , [Application].[OnCall]
      , [Application].[Temporary]
      , [Application].[Weekends]
      , [Application].[Evenings]
      , [Application].[Nights]
      , [Application].[Referral]
	  , [Application].[AuthorizationDate]
FROM [dbo].[Applicant] [Applicant]
	OUTER APPLY (SELECT *
					 FROM [dbo].[Application] App
					 WHERE [Applicant].id = [App].ApplicantId
				) [Application]
	OUTER APPLY (SELECT PhoneNumbers =
						--STUFF((SELECT ', ' + COALESCE([PhoneType] + ': ', '') + [PhoneNumber]
						STUFF((SELECT ', ' + [PhoneNumber]
						FROM [dbo].[Phone] P
						WHERE P.ApplicantId = Ph.ApplicantId AND OwnerType = 'Applicant' --AND COALESCE(P.ApplicationId, '') = COALESCE(Ph.ApplicationId,'')
						FOR XML PATH('')), 1, 2, '')
					 FROM [dbo].[Phone] Ph
					 WHERE [Applicant].id = [Ph].ApplicantId AND OwnerType = 'Applicant' --AND ([Application].id = [Ph].ApplicationId OR [Ph].ApplicationId IS NULL)
					 GROUP BY Ph.ApplicantId, [PhoneType] --, Ph.ApplicationId, 
				) [Phone] 
	OUTER APPLY (SELECT Locations =
						STUFF((SELECT ', ' + [Location]
						FROM [dbo].[ApplicantLocation] L
						WHERE L.ApplicantId = Al.ApplicantId AND COALESCE(L.ApplicationId,'') = COALESCE(AL.ApplicationId,'')
						FOR XML PATH('')), 1, 2, '')
					 FROM [dbo].[ApplicantLocation] AL
					 WHERE [Applicant].id = AL.ApplicantId AND ([Application].id = AL.ApplicationId OR AL.ApplicationId IS NULL)
					 GROUP BY ApplicantId, ApplicationId
					 ) [Location]
	OUTER APPLY (SELECT Positions =
						STUFF((SELECT ', ' + [Position]
						FROM [dbo].[ApplicantPosition] P
						WHERE P.id = AP.ApplicantId AND COALESCE(P.ApplicationId,'') = COALESCE(AP.ApplicationId,'')
						FOR XML PATH('')), 1, 2, '')
					 FROM [dbo].[ApplicantPosition] AP
					 WHERE [Applicant].id = AP.ApplicantId AND ([Application].id = AP.ApplicationId OR AP.ApplicantId IS NULL)
					 GROUP BY ApplicantId, ApplicationId
					 ) [Position]
	OUTER APPLY (SELECT Documents =
						STUFF((SELECT ', ' + [DocumentType]
						FROM [dbo].[Document] D
						WHERE D.id = Doc.ApplicantId AND COALESCE(D.ApplicationId,'') = COALESCE(Doc.ApplicationId,'')
						FOR XML PATH('')), 1, 2, '')
					 FROM [dbo].[Document] Doc
					 WHERE [Applicant].id = Doc.ApplicantId AND ([Application].id = Doc.ApplicationId OR Doc.ApplicantId IS NULL)
					 GROUP BY ApplicantId, ApplicationId
					 ) [Document]
	OUTER APPLY (SELECT TOP 1 CurrentStatus = [Status]
					 FROM [dbo].[ApplicantStatus] St
					 WHERE [Applicant].id = St.ApplicantId AND ([Application].id = St.ApplicationId OR St.ApplicantId IS NULL)
					 ORDER BY St.CreateDate DESC
					 ) [Status]
) AS DistinctQuery
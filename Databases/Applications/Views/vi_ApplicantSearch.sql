

CREATE VIEW [dbo].[vi_ApplicantSearch]
AS
SELECT ROW_NUMBER() OVER (ORDER BY [id], [ApplicationId]) AS seq, *
FROM (
	SELECT DISTINCT -- TOP 20 
	  'vi_ApplicantSearch'									AS [Object]
	  ,	[Applicant].[id]									AS ApplicantId
	  , [Application].[id]									AS ApplicationId
	  , CAST(CASE WHEN [Applicant].[Disabled] = 1 THEN 1 ELSE 0 END AS BIT) AS IsDisabled 
      , [Applicant].*
	  , [Status].[CurrentStatus]
	  , [Phone].[PhoneNumbers]
	  , [Disabilities].[DisabilityTypes] 
	  , [DisabilityCodes].[DisabilityCodes]
      , [Location].[Locations]
	  , [Position].[Positions]
	  , [Document].[Documents]
      , [Application].[ApplicationDate]
      , [Application].[Consideration]
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
	  , [Application].[FullTime]
	  , [Application].[PartTime]
      , [Application].[Weekends]
      , [Application].[Evenings]
      , [Application].[Nights]
      , [Application].[Referral]
	  , [Application].[ReferralDetail]
	  , [Application].[AuthorizationDate]
	  , CAST(CASE WHEN [ServiceRecord].id IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS Veteran
	  , [ServiceRecord].[Branch]
FROM [dbo].[Applicant] [Applicant]
	OUTER APPLY (SELECT *
					 FROM [dbo].[Application] App
					 WHERE [Applicant].id = [App].ApplicantId
				) [Application]
	OUTER APPLY (SELECT *
					 FROM [dbo].[ServiceRecord] SR
					 WHERE [Applicant].id = [SR].ApplicantId
				) [ServiceRecord]
	OUTER APPLY (SELECT PhoneNumbers =
						--STUFF((SELECT ', ' + COALESCE([PhoneType] + ': ', '') + [PhoneNumber]
						STUFF((SELECT ', ' + [PhoneNumber]
						FROM [dbo].[Phone] P
						WHERE P.ApplicantId = Ph.ApplicantId AND OwnerType = 'Applicant'
						FOR XML PATH('')), 1, 2, '')
					 FROM [dbo].[Phone] Ph
					 WHERE [Applicant].id = [Ph].ApplicantId AND OwnerType = 'Applicant'
					 GROUP BY Ph.ApplicantId, [PhoneType]
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
						WHERE P.ApplicantId = AP.ApplicantId AND COALESCE(P.ApplicationId,'') = COALESCE(AP.ApplicationId,'')
						FOR XML PATH('')), 1, 2, '')
					 FROM [dbo].[ApplicantPosition] AP
					 WHERE [Applicant].id = AP.ApplicantId AND ([Application].id = AP.ApplicationId OR AP.ApplicationId IS NULL)
					 GROUP BY ApplicantId, ApplicationId
					 ) [Position]
	OUTER APPLY (SELECT Documents =
						STUFF((SELECT ', ' + [DocumentType]
						FROM [dbo].[Document] D
						WHERE D.id = Doc.ApplicantId
						FOR XML PATH('')), 1, 2, '')
					 FROM [dbo].[Document] Doc
					 WHERE [Applicant].id = Doc.ApplicantId
					 GROUP BY ApplicantId
					 ) [Document]
	OUTER APPLY (SELECT TOP 1 CurrentStatus = [Status]
					 FROM [dbo].[ApplicantStatus] St
					 WHERE [Applicant].id = St.ApplicantId AND ([Application].id = St.ApplicationId OR St.ApplicationId IS NULL)
					 ORDER BY St.CreateDate DESC
					 ) [Status]
	OUTER APPLY (SELECT DisabilityCodes =
					STUFF((SELECT ', ' + sc.[Description]
					FROM [dbo].[ApplicantDisabilityCode] dc
					JOIN [dbo].[SpecialtyCodes] sc ON dc.SpecialtyCode = sc.Code
					WHERE dc.ApplicantId = Code.ApplicantId
					FOR XML PATH('')), 1, 2, '')
					FROM [dbo].[ApplicantDisabilityCode] Code
					WHERE [Applicant].id = Code.ApplicantId
					GROUP BY ApplicantId
					) [DisabilityCodes]

	OUTER APPLY (SELECT DisabilityTypes =
					STUFF((SELECT ', ' + dt.[Description] + CASE WHEN COALESCE(ad.Note, '') NOT IN ('') THEN ' - '+ad.Note ELSE '' END
					FROM [dbo].[ApplicantDisability] ad
					JOIN [dbo].[DisabilityTypes] dt ON ad.DisabilityType = dt.[Name]
					WHERE ad.ApplicantId = Disability.ApplicantId
					FOR XML PATH('')), 1, 2, '')
					FROM [dbo].[ApplicantDisability] Disability
					WHERE [applicant].id = Disability.ApplicantId
					GROUP BY ApplicantId
					) [Disabilities]
) AS DistinctQuery
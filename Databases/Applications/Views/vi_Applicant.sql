﻿

CREATE VIEW [dbo].[vi_Applicant]
AS
SELECT * FROM (
	SELECT DISTINCT
		AP.[id]										AS ApplicantId
      , AP.[FirstName]							
      , AP.[LastName]
      , AP.[MiddleName]
      , AP.[MiddleInitial]
      , AP.[SocialSecurity]
      , AP.[Birthdate]
      , AP.[Gender]
      , AP.[Ethnicity]
      , AP.[Disabled]
      , AP.[CreateDate]
      , AP.[CreateUser]
	  , AN.[FirstName]							AS AlternateFirstName
	  , AN.[MiddleName]							AS AlternateMiddleName
	  , AN.[LastName]							AS AlternateLastName
	  , DD.[id]									AS DisabledDocumentId
      , DD.[DocumentType]
      , DD.[DocumentText]
      --, DD.[Document]
      , DD.[CreateDate]							AS DisabledDocumentCreateDate
	  , APP.[id]								AS ApplicationId
      , APP.[ApplicationDate]
      , APP.[Position]
      , APP.[Consideration]
      , APP.[Status]
      , APP.[Hired]
      , APP.[PreviousApplication]
      , APP.[PreviousEmployment]
      , APP.[PreviouslyTerminated]
      , APP.[CanWork]
      , APP.[DriversLicenseState]
      , APP.[AvailableDate]
      , APP.[OnCall]
      , APP.[Temporary]
      , APP.[Weekends]
      , APP.[Evenings]
      , APP.[Nights]
      , APP.[Referral]
      , APP.[LeaveReason]
      , APP.[LastSupervisor]
      , APP.[AuthorizationDate]
      , APP.[Signature]
	  , REF.[id]								AS ReferenceId
      , REF.[ApplicationId]						AS ReferenceApplicationId
      , REF.[Name]
      , REF.[Address]
      , REF.[Business]
      , REF.[YearsAcquainted]
	  , PE.[id]									AS PreviousEmployerId
      , PE.[ApplicationId]						AS PreviousEmployerApplicationId
      , PE.[CompanyName]
      , PE.[From]
      , PE.[To]
      , PE.[AddressId]
      , PE.[Duties]
      , PE.[SupervisorName]
      , PE.[SupervisorTitle]
      , PE.[SupervisorDepartment]
      , PE.[SupervisorPhoneId]
      , PE.[SupervisorContact]
	  , PE.[EmployerAddressType]
	  , PE.[EmployerAddress1]
	  , PE.[EmployerAddress2]
	  , PE.[EmployerAddress3]
	  , PE.[EmployerCity]
	  , PE.[EmployerState]
	  , PE.[EmployerPostalCode]
	  , PE.[EmployerPhoneNumber]
	  , PE.[EmployerPhoneType]
	  , PE.[EmployerPhoneNote]
	  
FROM [dbo].[Applicant] AP
	LEFT OUTER JOIN [dbo].[AlternateNames] AN ON AP.id = AN.ApplicantId
	LEFT OUTER JOIN [dbo].[DisabledDocument] DD ON AP.id = DD.ApplicantId
	LEFT OUTER JOIN [dbo].[Application] APP ON AP.id = APP.ApplicantId
	LEFT OUTER JOIN [dbo].[Education] ED ON AP.id = ED.ApplicantId AND (APP.id = ED.ApplicationId OR ED.ApplicationId IS NULL)
	LEFT OUTER JOIN [dbo].[ServiceRecord] SR ON AP.id = SR.ApplicantId AND (APP.id = SR.ApplicationId OR SR.ApplicationId IS NULL)
	LEFT OUTER JOIN [dbo].[References] REF ON AP.id = REF.ApplicantId AND (APP.id = REF.ApplicationId OR REF.ApplicationId IS NULL)
	LEFT OUTER JOIN [dbo].[Address] AD ON AP.id = AD.ApplicantId AND (APP.id = AD.ApplicationId OR AD.ApplicationId IS NULL)
	LEFT OUTER JOIN [dbo].[Phone] PH ON AP.id = PH.ApplicantId AND (APP.id = PH.ApplicationId OR PH.ApplicationId IS NULL)
	LEFT OUTER JOIN (SELECT P.*, A.AddressType AS EmployerAddressType, A.Address1 AS EmployerAddress1, A.Address2 AS EmployerAddress2, A.Address3 AS EmployerAddress3, A.City AS EmployerCity, A.State AS EmployerState, A.PostalCode AS EmployerPostalCode
						, PH.PhoneNumber AS EmployerPhoneNumber, PH.PhoneType AS EmployerPhoneType, PH.Note AS EmployerPhoneNote
					 FROM [dbo].[PreviousEmployer] P
						LEFT OUTER JOIN [dbo].[Address] A ON P.AddressId = A.id
						LEFT OUTER JOIN [dbo].[Phone] PH ON P.SupervisorPhoneId = PH.id) PE ON AP.id = PE.ApplicantId AND (APP.id = PE.ApplicationId OR PE.ApplicationId IS NULL)

 FOR JSON AUTO
 ) AS X(applicantId)
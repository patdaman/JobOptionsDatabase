

CREATE VIEW [dbo].[vi_Application_JSON]
AS
SELECT * FROM (
	SELECT DISTINCT
		Applicant.[id]										AS ApplicantId
      , Applicant.[FirstName]							
      , Applicant.[LastName]
      , Applicant.[MiddleName]
      , Applicant.[MiddleInitial]
      , Applicant.[SocialSecurity]
      , Applicant.[Birthdate]
      , Applicant.[Gender]
      , Applicant.[Ethnicity]
      , Applicant.[Disabled]
      , Applicant.[CreateDate]
      , Applicant.[CreateUser]
	  , AlternateName.[FirstName]							AS AlternateFirstName
	  , AlternateName.[MiddleName]							AS AlternateMiddleName
	  , AlternateName.[LastName]							AS AlternateLastName
	  , Document.[id]									AS DisabledDocumentId
      , Document.[DocumentType]
      , Document.[DocumentText]
      --, Document.[Document]
      , Document.[CreateDate]							AS DisabledDocumentCreateDate
	  , [Application].[id]								AS ApplicationId
      , [Application].[ApplicationDate]
      , [Application].[Position]
      , [Application].[Consideration]
      , [Application].[Status]
      , [Application].[Hired]
      , [Application].[PreviousApplication]
      , [Application].[PreviousEmployment]
      , [Application].[PreviouslyTerminated]
      , [Application].[CanWork]
      , [Application].[DriversLicenseState]
      , [Application].[AvailableDate]
      , [Application].[OnCall]
      , [Application].[Temporary]
      , [Application].[Weekends]
      , [Application].[Evenings]
      , [Application].[Nights]
      , [Application].[Referral]
      , [Application].[LeaveReason]
      , [Application].[LastSupervisor]
      , [Application].[AuthorizationDate]
      , [Application].[Signature]
	  , Reference.[id]								AS ReferenceId
      , Reference.[ApplicationId]						AS ReferenceApplicationId
      , Reference.[Name]
      , Reference.[Address]
      , Reference.[Business]
      , Reference.[YearsAcquainted]
	  , PreviousEmployer.[id]									AS PreviousEmployerId
      , PreviousEmployer.[ApplicationId]						AS PreviousEmployerApplicationId
      , PreviousEmployer.[CompanyName]
      , PreviousEmployer.[From]
      , PreviousEmployer.[To]
      , PreviousEmployer.[AddressId]
      , PreviousEmployer.[Duties]
      , PreviousEmployer.[SupervisorName]
      , PreviousEmployer.[SupervisorTitle]
      , PreviousEmployer.[SupervisorDepartment]
      , PreviousEmployer.[SupervisorPhoneId]
      , PreviousEmployer.[SupervisorContact]
	  , PreviousEmployer.[EmployerAddressType]
	  , PreviousEmployer.[EmployerAddress1]
	  , PreviousEmployer.[EmployerAddress2]
	  , PreviousEmployer.[EmployerAddress3]
	  , PreviousEmployer.[EmployerCity]
	  , PreviousEmployer.[EmployerState]
	  , PreviousEmployer.[EmployerPostalCode]
	  , PreviousEmployer.[EmployerPhoneNumber]
	  , PreviousEmployer.[EmployerPhoneType]
	  , PreviousEmployer.[EmployerPhoneNote]
	  
FROM [dbo].[Applicant] Applicant
	LEFT OUTER JOIN [dbo].[AlternateName] AlternateName ON Applicant.id = AlternateName.ApplicantId
	LEFT OUTER JOIN [dbo].[Document] Document ON Applicant.id = Document.ApplicantId
	LEFT OUTER JOIN [dbo].[Application] [Application] ON Applicant.id = [Application].ApplicantId
	LEFT OUTER JOIN [dbo].[Education] Education ON Applicant.id = Education.ApplicantId AND ([Application].id = Education.ApplicationId OR Education.ApplicationId IS NULL)
	LEFT OUTER JOIN [dbo].[ServiceRecord] ServiceRecord ON Applicant.id = ServiceRecord.ApplicantId AND ([Application].id = ServiceRecord.ApplicationId OR ServiceRecord.ApplicationId IS NULL)
	LEFT OUTER JOIN [dbo].[References] Reference ON Applicant.id = Reference.ApplicantId AND ([Application].id = Reference.ApplicationId OR Reference.ApplicationId IS NULL)
	LEFT OUTER JOIN [dbo].[Address] [Address] ON Applicant.id = [Address].ApplicantId AND ([Application].id = [Address].ApplicationId OR [Address].ApplicationId IS NULL)
	LEFT OUTER JOIN [dbo].[Phone] Phone ON Applicant.id = Phone.ApplicantId AND ([Application].id = Phone.ApplicationId OR Phone.ApplicationId IS NULL)
	LEFT OUTER JOIN (SELECT P.*, A.AddressType AS EmployerAddressType, A.Address1 AS EmployerAddress1, A.Address2 AS EmployerAddress2, A.Address3 AS EmployerAddress3, A.City AS EmployerCity, A.[State] AS EmployerState, A.PostalCode AS EmployerPostalCode
						, Phone.PhoneNumber AS EmployerPhoneNumber, Phone.PhoneType AS EmployerPhoneType, Phone.Note AS EmployerPhoneNote
					 FROM [dbo].[PreviousEmployer] P
						LEFT OUTER JOIN [dbo].[Address] A ON P.AddressId = A.id
						LEFT OUTER JOIN [dbo].[Phone] Phone ON P.SupervisorPhoneId = Phone.id) PreviousEmployer ON Applicant.id = PreviousEmployer.ApplicantId AND ([Application].id = PreviousEmployer.ApplicationId OR PreviousEmployer.ApplicationId IS NULL)

 FOR JSON AUTO
 ) AS X(applicationId)
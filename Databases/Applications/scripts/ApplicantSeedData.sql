USE [Applications]
GO

DECLARE @applicants TABLE (id INT)
DECLARE @applicantId1 INT, @applicantId2 INT

DECLARE @applications TABLE (id INT)
DECLARE @applicationId1 INT, @applicationId2 INT

DECLARE @addresses TABLE (id INT, ownerType VARCHAR(128))
DECLARE @addressId1 INT, @addressId2 INT

DECLARE @phones TABLE (id INT, ownerType VARCHAR(128))
DECLARE @phoneId1 INT, @phoneId2 INT

INSERT INTO [dbo].[Applicant]
           ([FirstName]
           ,[LastName]
           ,[MiddleName]
           ,[SocialSecurity]
           ,[Birthdate]
           ,[Gender]
           ,[Ethnicity]
           ,[Disabled])
		OUTPUT inserted.id INTO @applicants
     VALUES
           ('Rutiger'
           ,'Marks'
           ,''
           ,'987654321'
           ,CAST('1977-01-01' AS datetime2(0))
           ,'Male'
           ,'Caucasian'
           ,1)
		 , ('Mary'
           ,'Steens'
           ,''
           ,'123456789'
           ,CAST('1987-01-01' AS datetime2(0))
           ,'Female'
           ,'Hispanic'
           ,0)

SELECT TOP 1 @applicantId1 = id
FROM @applicants 
ORDER BY id ASC
SELECT TOP 1 @applicantId2 = id
FROM @applicants 
ORDER BY id DESC

INSERT INTO [dbo].[Application]
           ([ApplicantId]
           ,[ApplicationDate]
           ,[Position]
           ,[Consideration]
           ,[Status]
           ,[Hired]
           ,[PreviousApplication]
           ,[PreviousEmployment]
           ,[PreviouslyTerminated]
           ,[CanWork]
           ,[DriversLicenseState]
           ,[AvailableDate]
           ,[OnCall]
           ,[Temporary]
           ,[Weekends]
           ,[Evenings]
           ,[Nights]
           ,[Referral]
           ,[LeaveReason]
           ,[LastSupervisor]
           ,[AuthorizationDate]
           --,[Signature]
) OUTPUT inserted.id INTO @applications
     VALUES
           (@applicantId1
           ,GETDATE()
           ,'Housekeeping'
           ,'Doc Reviewed'
           ,'Hired'
           ,1
           ,0
           ,0
           ,0
           ,1
           ,'OR'
           ,GETDATE()
           ,0
           ,1
           ,0
           ,1
           ,0
           ,'Supervisor'
           ,'Moved'
           ,'Stephanie'
           , CAST('2017-12-12' AS datetime2)
           -- ,<Signature, varbinary(512),>
		   )
		,  (@applicantId2
           ,GETDATE()
           ,'Janitor'
           ,'Bad Documentation'
           ,'Hired'
           ,0
           ,0
           ,0
           ,0
           ,1
           ,'CA'
           ,GETDATE()
           ,0
           ,1
           ,0
           ,1
           ,0
           ,'my mom'
           ,'Fired for insubordination'
           ,'Mike Cano'
           , CAST('2017-12-12' AS datetime2)
           -- ,<Signature, varbinary(512),>
		   )

SELECT TOP 1 @applicationId1 = id
FROM @applications
ORDER BY id ASC
SELECT TOP 1 @applicationId2 = id
FROM @applications 
ORDER BY id DESC

INSERT INTO [dbo].[Address]
           ([ApplicantId]
           ,[ApplicationId]
           ,[AddressType]
           ,[OwnerType]
           ,[Address1]
           ,[Address2]
           ,[Address3]
           ,[City]
           ,[State]
           ,[PostalCode])
		OUTPUT inserted.id, inserted.OwnerType INTO @addresses
     VALUES
           (@applicantId1
           , @applicationId1
           , 'Home'
           , 'Applicant'
           , '123 Fake Street'
           , ''
           , ''
           , 'San Diego'
           , 'CA'
           , '92112'
		)
		, (@applicantId1
           , @applicationId1
           , 'Business'
           , 'Applicant'
           , '456 This Way'
           , ''
           , ''
           , 'San Diego'
           , 'CA'
           , '92102'
		)

SELECT TOP 1 @addressId1 = id
FROM @addresses
WHERE ownerType = 'Employer'
ORDER BY id ASC
SELECT TOP 1 @addressId2 = id
FROM @addresses
WHERE ownerType = 'Employer'
ORDER BY id DESC

INSERT INTO [dbo].[Phone]
           ([ApplicantId]
           ,[ApplicationId]
           ,[PhoneType]
           ,[OwnerType]
           ,[PhoneNumber]
           ,[Note])
     VALUES
           (@applicantId1
           ,@applicationId1
           ,'Business'
           ,'Applicant'
           ,'123456789'
           ,'Note 1')
		, (@applicantId2
           ,@applicationId2
           ,'Home'
           ,'Applicant'
           ,'987654321'
           ,'This is my second note')
		, (null
           ,@applicationId1
           ,'Business'
           ,'Employer'
           ,'987654321'
           ,'Employer1')
		, (null
           ,@applicationId2
           ,'Business'
           ,'Employer'
           ,'9456578921'
           ,'Employer2')

SELECT TOP 1 @phoneId1 = id
FROM @phones
WHERE ownerType = 'Employer'
ORDER BY id ASC
SELECT TOP 1 @phoneId2 = id
FROM @phones
WHERE ownerType = 'Employer'
ORDER BY id DESC

INSERT INTO [dbo].[PreviousEmployer]
           ([ApplicantId]
           ,[ApplicationId]
           ,[CompanyName]
           ,[From]
           ,[To]
           ,[AddressId]
           ,[Duties]
           ,[SupervisorName]
           ,[SupervisorTitle]
           ,[SupervisorDepartment]
           ,[SupervisorPhoneId]
           ,[SupervisorContact])
     VALUES
           (@applicantId1
           ,@ApplicationId1
           ,'Wells Fargo'
           ,CAST('2011-01-05' AS datetime2)
           ,CAST('2015-12-12' AS datetime2)
           ,@addressId1
           ,'Wash Linens'
           ,'Hank Smith'
           ,'Head Washer'
           ,'Sanitation'
           ,@phoneId1
           ,1)
		,  (@applicantId1
           ,@ApplicationId1
           ,'Job Options'
           ,CAST('2011-01-05' AS datetime2)
           ,CAST('2015-12-12' AS datetime2)
           ,@addressId2
           ,'Wash Linens'
           ,'Hank Smith'
           ,'Head Washer'
           ,'Sanitation'
           ,@phoneId2
           ,0)
GO



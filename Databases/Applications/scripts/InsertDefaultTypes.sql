USE [Applications]
GO
-- *****************************************************
DELETE FROM [dbo].[AddressTypes]
GO
INSERT INTO [dbo].[AddressTypes]
           ([Name], [Description])
     VALUES
		   ('Business', 'Business')
           , ('Home', 'Home Address')
		   , ('Mailing', 'Mailing Address')
GO
-- *****************************************************
DELETE FROM [dbo].[ConsiderationTypes]
GO
INSERT INTO [dbo].[ConsiderationTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Bad Documentation', 'Bad Documentation')
		   , ('Doc Reviewed', 'Doc Reviewed')
		   , ('Pending Review', 'Pending Review')
		   , ('Reviewed', 'Reviewed')
GO
-- *****************************************************
DELETE FROM [dbo].[DocumentTypes]
GO
INSERT INTO [dbo].[DocumentTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Doctor''s Note', 'Doctor''s Note')
		   , ('Axis I', 'Axis I')
		   , ('WISC-R', 'WISC-R')
		   , ('WRAT-2', 'WRAT-2')
		   , ('DRIS', 'DRIS')
		   , ('Audiology Report', 'Audiology Report')
		   , ('Other', 'Other')
GO
-- *****************************************************
DELETE FROM [dbo].[EthnicityTypes]
GO
INSERT INTO [dbo].[EthnicityTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Caucasian', 'Caucasian')
		   , ('Hispanic', 'Hispanic')
		   , ('African American', 'African American')
		   , ('Asian', 'Asian')
GO
-- *****************************************************
DELETE FROM [dbo].[GenderTypes]
GO
INSERT INTO [dbo].[GenderTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Male', 'Male')
		   , ('Female', 'Female')
GO
-- *****************************************************
DELETE FROM [dbo].[PhoneTypes]
GO
INSERT INTO [dbo].[PhoneTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Home', 'Home')
		   , ('Business', 'Business')
		   , ('Mobile', 'Mobile')
GO
-- *****************************************************
DELETE FROM [dbo].[StatusTypes]
GO
INSERT INTO [dbo].[StatusTypes]
           ([Name]
           ,[Description])
     VALUES
			('Hired', 'Hired')
		   , ('Waiting List', 'Waiting List')
           , ('New Document Submitted', 'New Document Submitted')
		   , ('Need Additional Documentation', 'Need Additional Documentation')
		   , ('Cannot Accommodate', 'Cannot Accommodate')
		   , ('No Government Clearance', 'No Government Clearance')
GO
-- *****************************************************
DELETE FROM [dbo].[OwnerTypes]
GO
INSERT INTO [dbo].[OwnerTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Employer', 'Employer')
		   , ('Applicant', 'Applicant')
		   , ('Employee', 'Employee')
GO


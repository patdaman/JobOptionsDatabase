USE [Applications]
GO
-- *****************************************************
TRUNCATE TABLE [dbo].[AddressTypes]
GO
INSERT INTO [dbo].[AddressTypes]
           ([Name], [Description])
     VALUES
		   ('Business', 'Business')
           , ('Home', 'Home Address')
		   , ('Mailing', 'Mailing Address')
GO
-- *****************************************************
TRUNCATE TABLE [dbo].[ConsiderationTypes]
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
TRUNCATE TABLE [dbo].[DocumentTypes]
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
TRUNCATE TABLE [dbo].[EthnicityTypes]
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
TRUNCATE TABLE [dbo].[GenderTypes]
GO
INSERT INTO [dbo].[GenderTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Male', 'Male')
		   , ('Female', 'Female')
GO
-- *****************************************************
TRUNCATE TABLE [dbo].[PhoneTypes]
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
TRUNCATE TABLE [dbo].[StatusTypes]
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
TRUNCATE TABLE [dbo].[OwnerTypes]
GO
INSERT INTO [dbo].[OwnerTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Employer', 'Employer')
		   , ('Applicant', 'Applicant')
		   , ('Employee', 'Employee')
GO

-- *****************************************************
TRUNCATE TABLE [dbo].[EmploymentTypes]
GO
INSERT INTO [dbo].[EmploymentTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Administrative Support', 'Administrative Support')
		   , ('Custodial', 'Custodial')
		   , ('Food Services', 'Food Services')
		   , ('Grounds Maintenance/Landscaping', 'Grounds Maintenance/Landscaping')
		   , ('Laundry', 'Laundry')
		   , ('Shelf Stocking', 'Shelf Stocking')
GO

INSERT INTO [dbo].[PositionTypes]
           ([Name]
           ,[Description])
     VALUES
           ('Administrative Support', 'Administrative Support')
		   , ('Food Services', 'Food Services')
		   , ('Grounds Maintenance / Landscaping', 'Grounds Maintenance / Landscaping')
		   , ('Professional Services', 'Professional Services')
		   , ('Shelf Stocking', 'Shelf Stocking')
GO


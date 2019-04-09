CREATE TABLE [dbo].[Applicant] (
    [id]              INT           IDENTITY (10000, 1) NOT NULL,
    [EmpNo]           INT           NULL,
    [FirstName]       VARCHAR (128) NOT NULL,
    [LastName]        VARCHAR (128) NOT NULL,
    [MiddleName]      VARCHAR (128) NULL,
    [SocialSecurity]  VARCHAR (12)  NULL,
    [Email]           VARCHAR (256) NULL,
    [Birthdate]       DATETIME2 (0) NULL,
    [Gender]          VARCHAR (128) NULL,
    [Ethnicity]       VARCHAR (128) NULL,
    [Disabled]        BIT           CONSTRAINT [DF_Applicant_Disabled] DEFAULT ((1)) NOT NULL,
    [HearingImpaired] BIT           NULL,
    [Accepted]        BIT           CONSTRAINT [DF_Applicant_Accepted] DEFAULT ((0)) NULL,
    [CreateDate]      DATETIME2 (0) CONSTRAINT [DF_Applicant_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]      VARCHAR (128) CONSTRAINT [DF_Applicant_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]      DATETIME2 (0) CONSTRAINT [DF_Applicant_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]      VARCHAR (128) CONSTRAINT [DF_Applicant_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [IX_Applicant_EmpNo] UNIQUE NONCLUSTERED ([EmpNo] ASC)
);














GO
-- =============================================
-- Author:		Patrick de los Reyes
-- Create date: 2018-10-18
-- Description:	Update EmpNo to value of 'id' if inserted is null
-- =============================================
CREATE TRIGGER [dbo].[tr_UpdateEmpNo] 
   ON  [dbo].[Applicant] 
   AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	UPDATE App
	SET App.EmpNo = inserted.id
	FROM dbo.Applicant AS App
	INNER JOIN inserted ON App.id = inserted.id
	WHERE App.EmpNo IS NULL
		OR App.EmpNo = ''
END
GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Enforce Unique for EmpNo', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant', @level2type = N'CONSTRAINT', @level2name = N'IX_Applicant_EmpNo';


CREATE TABLE [dbo].[AlternateName] (
    [id]          INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId] INT           NOT NULL,
    [FirstName]   VARCHAR (128) NOT NULL,
    [MiddleName]  VARCHAR (50)  NULL,
    [LastName]    VARCHAR (128) NOT NULL,
    [CreateDate]  DATETIME2 (7) CONSTRAINT [DF_AlternateNames_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_AlternateNames_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_AlternateName] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_AlternateName_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]),
    CONSTRAINT [IX_AlternateName] UNIQUE NONCLUSTERED ([ApplicantId] ASC, [FirstName] ASC, [MiddleName] ASC, [LastName] ASC)
);




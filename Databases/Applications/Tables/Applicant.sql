CREATE TABLE [dbo].[Applicant] (
    [id]              INT           IDENTITY (10000, 1) NOT NULL,
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
    [CreateDate]      DATETIME2 (0) CONSTRAINT [DF_Applicant_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]      VARCHAR (128) CONSTRAINT [DF_Applicant_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]      DATETIME2 (0) CONSTRAINT [DF_Applicant_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]      VARCHAR (128) CONSTRAINT [DF_Applicant_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Applicant_EthnicityTypes] FOREIGN KEY ([Ethnicity]) REFERENCES [dbo].[EthnicityTypes] ([Name]),
    CONSTRAINT [FK_Applicant_GenderTypes] FOREIGN KEY ([Gender]) REFERENCES [dbo].[GenderTypes] ([Name])
);








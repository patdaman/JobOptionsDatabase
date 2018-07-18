CREATE TABLE [dbo].[Reference] (
    [id]              INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]     INT           NOT NULL,
    [ApplicationId]   INT           NULL,
    [Name]            VARCHAR (256) NOT NULL,
    [Address]         VARCHAR (512) NULL,
    [Business]        VARCHAR (256) NULL,
    [YearsAcquainted] VARCHAR (50)  NULL,
    [CreateDate]      DATETIME2 (0) NOT NULL,
    [CreateUser]      VARCHAR (128) CONSTRAINT [DF_Reference_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]      DATETIME2 (0) NOT NULL,
    [ModifyUser]      VARCHAR (128) CONSTRAINT [DF_Reference_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Reference] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Reference_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]),
    CONSTRAINT [FK_Reference_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id])
);


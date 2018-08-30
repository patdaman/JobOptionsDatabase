CREATE TABLE [dbo].[ApplicantStatus] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NOT NULL,
    [ApplicationId] INT           NULL,
    [Status]        VARCHAR (128) NOT NULL,
    [Note]          VARCHAR (MAX) NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_ApplicantStatus_CreateUser] DEFAULT ('suser_name') NOT NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_ApplicantStatus_CreateDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_ApplicantStatus_ModifyUser] DEFAULT ('suser_name') NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_ApplicantStatus_ModifyDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ApplicantStatus] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_ApplicantStatus_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_ApplicantStatus_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
);


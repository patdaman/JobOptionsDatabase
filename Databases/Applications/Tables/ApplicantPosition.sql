CREATE TABLE [dbo].[ApplicantPosition] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NOT NULL,
    [ApplicationId] INT           NULL,
    [Position]      VARCHAR (256) NOT NULL,
    [Note]          VARCHAR (MAX) NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_ApplicantPosition_CreateUser] DEFAULT ('suser_name') NOT NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_ApplicantPosition_CreateDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_ApplicantPosition_ModifyUser] DEFAULT ('suser_name') NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_ApplicantPosition_ModifyDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ApplicantPosition] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_ApplicantPosition_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_ApplicantPosition_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
);


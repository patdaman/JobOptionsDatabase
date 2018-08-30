CREATE TABLE [dbo].[ApplicantLocation] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NOT NULL,
    [ApplicationId] INT           NULL,
    [Location]      VARCHAR (256) NOT NULL,
    [Note]          VARCHAR (MAX) NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_ApplicantLocation_CreateUser] DEFAULT ('suser_name') NOT NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_ApplicantLocation_CreateDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_ApplicantLocation_ModifyUser] DEFAULT ('suser_name') NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_ApplicantLocation_ModifyDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ApplicantLocation] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_ApplicantLocation_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_ApplicantLocation_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
);


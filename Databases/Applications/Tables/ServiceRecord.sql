CREATE TABLE [dbo].[ServiceRecord] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NOT NULL,
    [ApplicationId] INT           NULL,
    [Branch]        VARCHAR (50)  NOT NULL,
    [DischargeDate] DATETIME2 (7) NULL,
    [DischargeRank] VARCHAR (128) NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_ServiceRecord_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_ServiceRecord_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_ServiceRecord_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_ServiceRecord_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_ServiceRecord] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_ServiceRecord_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_ServiceRecord_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
);




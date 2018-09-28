CREATE TABLE [dbo].[Interview] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NOT NULL,
    [ApplicationId] INT           NULL,
    [QuestionType]  VARCHAR (128) NULL,
    [Note]          VARCHAR (MAX) NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_Interview_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_Interview_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_Interview_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_Interview_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Interview] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Interview_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_Interview_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
);


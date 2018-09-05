CREATE TABLE [dbo].[PreviousEmployer] (
    [id]                   INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]          INT           NOT NULL,
    [ApplicationId]        INT           NULL,
    [CompanyName]          VARCHAR (128) NOT NULL,
    [StartDate]            DATETIME2 (0) NULL,
    [EndDate]              DATETIME2 (0) NULL,
    [Address]              VARCHAR (512) NULL,
    [Duties]               VARCHAR (256) NULL,
    [SupervisorName]       VARCHAR (256) NULL,
    [SupervisorTitle]      VARCHAR (128) NULL,
    [SupervisorDepartment] VARCHAR (128) NULL,
    [SupervisorPhone]      VARCHAR (128) NULL,
    [SupervisorContact]    BIT           CONSTRAINT [DF_PreviousEmployer_SupervisorContact] DEFAULT ((1)) NULL,
    [CreateDate]           DATETIME2 (0) CONSTRAINT [DF_PreviousEmployer_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]           VARCHAR (128) CONSTRAINT [DF_PreviousEmployer_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]           DATETIME2 (0) CONSTRAINT [DF_PreviousEmployer_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]           VARCHAR (128) CONSTRAINT [DF_PreviousEmployer_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_PreviousEmployer] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_PreviousEmployer_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_PreviousEmployer_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
);








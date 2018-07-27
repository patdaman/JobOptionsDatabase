CREATE TABLE [dbo].[Education] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NOT NULL,
    [ApplicationId] INT           NULL,
    [Level]         VARCHAR (128) NOT NULL,
    [Name]          VARCHAR (256) NULL,
    [YearsAttended] FLOAT (53)    NULL,
    [Graduate]      BIT           CONSTRAINT [DF_Education_Graduate] DEFAULT ((0)) NULL,
    [Subjects]      VARCHAR (256) NULL,
    [DegreeType]    VARCHAR (50)  NULL,
    [Major]         VARCHAR (128) NULL,
    [GPA]           FLOAT (53)    NULL,
    [City]          VARCHAR (128) NULL,
    [State]         VARCHAR (50)  NULL,
    [Zip]           VARCHAR (50)  NULL,
    [Address]       VARCHAR (256) NULL,
    [Other]         VARCHAR (MAX) NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_Education_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_Education_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_Education_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_Education_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Education_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]),
    CONSTRAINT [FK_Education_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id])
);




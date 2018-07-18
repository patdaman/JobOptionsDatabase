CREATE TABLE [dbo].[Application] (
    [id]                          INT             IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]                 INT             NOT NULL,
    [ApplicationDate]             DATETIME2 (7)   CONSTRAINT [DF_Application_ApplicationDate] DEFAULT (getdate()) NOT NULL,
    [Positions]                   VARCHAR (1024)  NULL,
    [Consideration]               VARCHAR (128)   NULL,
    [Status]                      VARCHAR (128)   NULL,
    [Hired]                       BIT             CONSTRAINT [DF_Application_Hired] DEFAULT ((0)) NOT NULL,
    [PreviousApplication]         BIT             CONSTRAINT [DF_Application_PreviousApplication] DEFAULT ((0)) NULL,
    [PreviousEmployment]          BIT             CONSTRAINT [DF_Application_PreviousEmployment] DEFAULT ((0)) NULL,
    [PreviouslyTerminated]        BIT             CONSTRAINT [DF_Application_PreviouslyTerminated] DEFAULT ((0)) NULL,
    [CanWork]                     BIT             CONSTRAINT [DF_Application_CanWork] DEFAULT ((1)) NULL,
    [Rehabilitation]              BIT             NULL,
    [IsPublicAssistance]          BIT             NULL,
    [PublicAssistanceDescription] VARCHAR (1024)  NULL,
    [DriversLicenseState]         NCHAR (2)       NULL,
    [DriversLicenseNumber]        VARCHAR (10)    NULL,
    [AvailableDate]               DATETIME2 (0)   NULL,
    [OnCall]                      BIT             CONSTRAINT [DF_Application_OnCall] DEFAULT ((0)) NOT NULL,
    [Temporary]                   BIT             CONSTRAINT [DF_Application_Temporary] DEFAULT ((0)) NOT NULL,
    [Weekends]                    BIT             CONSTRAINT [DF_Application_Weekends] DEFAULT ((0)) NOT NULL,
    [Evenings]                    BIT             CONSTRAINT [DF_Application_Evenings] DEFAULT ((0)) NOT NULL,
    [Nights]                      BIT             CONSTRAINT [DF_Application_Nights] DEFAULT ((0)) NOT NULL,
    [Referral]                    VARCHAR (256)   NULL,
    [LeaveReason]                 VARCHAR (512)   NULL,
    [LastSupervisor]              VARCHAR (128)   NULL,
    [AuthorizationDate]           DATETIME2 (7)   NULL,
    [Signature]                   VARBINARY (512) NULL,
    [CreateDate]                  DATETIME2 (0)   CONSTRAINT [DF_Application_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]                  VARCHAR (128)   CONSTRAINT [DF_Application_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]                  DATETIME2 (0)   CONSTRAINT [DF_Application_ModifyDate] DEFAULT (getdate()) NULL,
    [ModifyUser]                  VARCHAR (128)   CONSTRAINT [DF_Application_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Application_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]),
    CONSTRAINT [FK_Application_ConsiderationTypes] FOREIGN KEY ([Consideration]) REFERENCES [dbo].[ConsiderationTypes] ([Name]),
    CONSTRAINT [FK_Application_StatusTypes] FOREIGN KEY ([Status]) REFERENCES [dbo].[StatusTypes] ([Name])
);








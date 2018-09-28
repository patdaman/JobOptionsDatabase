CREATE TABLE [dbo].[Reference] (
    [id]              INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]     INT           NOT NULL,
    [FirstName]       VARCHAR (128) NULL,
    [LastName]        VARCHAR (128) NULL,
    [PhoneNumber]     VARCHAR (32)  NULL,
    [Extension]       VARCHAR (16)  NULL,
    [Email]           VARCHAR (256) NULL,
    [Address]         VARCHAR (512) NULL,
    [Business]        VARCHAR (256) NULL,
    [YearsAcquainted] VARCHAR (50)  NULL,
    [Note]            VARCHAR (MAX) NULL,
    [Active]          BIT           CONSTRAINT [DF_Reference_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]      DATETIME2 (0) NOT NULL,
    [CreateUser]      VARCHAR (128) CONSTRAINT [DF_Reference_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]      DATETIME2 (0) NOT NULL,
    [ModifyUser]      VARCHAR (128) CONSTRAINT [DF_Reference_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Reference] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Reference_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
);








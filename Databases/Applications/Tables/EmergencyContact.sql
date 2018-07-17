﻿CREATE TABLE [dbo].[EmergencyContact] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NOT NULL,
    [ApplicationId] INT           NULL,
    [Active]        BIT           CONSTRAINT [DF_EmergencyContact_Active] DEFAULT ((1)) NOT NULL,
    [FirstName]     VARCHAR (128) NULL,
    [LastName]      VARCHAR (128) NULL,
    [AddressId]     INT           NULL,
    [PhoneId]       INT           NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_EmergencyContact_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_EmergencyContact_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_EmergencyContact_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_EmergencyContact_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_EmergencyContact] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_EmergencyContact_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]),
    CONSTRAINT [FK_EmergencyContact_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id])
);


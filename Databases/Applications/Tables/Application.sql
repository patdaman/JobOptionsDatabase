﻿CREATE TABLE [dbo].[Application] (
    [id]                          INT            IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]                 INT            NOT NULL,
    [ApplicationDate]             DATETIME2 (0)  CONSTRAINT [DF_Application_ApplicationDate] DEFAULT (getdate()) NOT NULL,
    [Consideration]               VARCHAR (128)  NULL,
    [CurrentStatus]               VARCHAR (128)  NULL,
    [Hired]                       BIT            CONSTRAINT [DF_Application_Hired] DEFAULT ((0)) NULL,
    [PreviousApplication]         BIT            CONSTRAINT [DF_Application_PreviousApplication] DEFAULT ((0)) NULL,
    [WhereApplied]                VARCHAR (512)  NULL,
    [WhenApplied]                 DATETIME2 (0)  NULL,
    [PreviousEmployment]          BIT            CONSTRAINT [DF_Application_PreviousEmployment] DEFAULT ((0)) NULL,
    [WhereEmployed]               VARCHAR (512)  NULL,
    [LeaveReason]                 VARCHAR (512)  NULL,
    [LastSupervisor]              VARCHAR (128)  NULL,
    [PreviouslyTerminated]        BIT            CONSTRAINT [DF_Application_PreviouslyTerminated] DEFAULT ((0)) NULL,
    [TerminationDetail]           VARCHAR (MAX)  NULL,
    [CanWork]                     BIT            CONSTRAINT [DF_Application_CanWork] DEFAULT ((1)) NULL,
    [is18]                        BIT            NULL,
    [Rehabilitation]              BIT            NULL,
    [IsPublicAssistance]          BIT            NULL,
    [PublicAssistanceDescription] VARCHAR (1024) NULL,
    [DriversLicenseState]         NCHAR (2)      NULL,
    [HasDriversLicense]           BIT            NULL,
    [AvailableDate]               DATETIME2 (0)  NULL,
    [OnCall]                      BIT            CONSTRAINT [DF_Application_OnCall] DEFAULT ((0)) NULL,
    [PartTime]                    BIT            NULL,
    [FullTime]                    BIT            NULL,
    [Temporary]                   BIT            CONSTRAINT [DF_Application_Temporary] DEFAULT ((0)) NULL,
    [Weekends]                    BIT            CONSTRAINT [DF_Application_Weekends] DEFAULT ((0)) NULL,
    [Evenings]                    BIT            CONSTRAINT [DF_Application_Evenings] DEFAULT ((0)) NULL,
    [Nights]                      BIT            CONSTRAINT [DF_Application_Nights] DEFAULT ((0)) NULL,
    [Referral]                    BIT            CONSTRAINT [DF_Application_Referral] DEFAULT ((0)) NULL,
    [ReferralDetail]              VARCHAR (MAX)  NULL,
    [AuthorizationDate]           DATETIME2 (7)  NULL,
    [Signature]                   BIT            CONSTRAINT [DF_Application_Signature] DEFAULT ((0)) NULL,
    [CreateDate]                  DATETIME2 (0)  CONSTRAINT [DF_Application_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]                  VARCHAR (128)  CONSTRAINT [DF_Application_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]                  DATETIME2 (0)  CONSTRAINT [DF_Application_ModifyDate] DEFAULT (getdate()) NULL,
    [ModifyUser]                  VARCHAR (128)  CONSTRAINT [DF_Application_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Application_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id])
);




























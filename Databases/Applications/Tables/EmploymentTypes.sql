﻿CREATE TABLE [dbo].[EmploymentTypes] (
    [Name]        VARCHAR (128) NOT NULL,
    [Description] VARCHAR (256) NULL,
    [Active]      BIT           CONSTRAINT [DF_EmploymentTypes_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_EmploymentTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_EmploymentTypes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_EmploymentTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_EmploymentTypes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_EmploymentTypes_1] PRIMARY KEY CLUSTERED ([Name] ASC)
);


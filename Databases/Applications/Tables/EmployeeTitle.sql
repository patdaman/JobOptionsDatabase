CREATE TABLE [dbo].[EmployeeTitle] (
    [id]          INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId] INT           NOT NULL,
    [Episode]     INT           NOT NULL,
    [TitleCode]   NVARCHAR (50) NOT NULL,
    [TitleWage]   FLOAT (53)    NULL,
    [LDWAT]       DATETIME2 (0) NULL,
    [StartDate]   DATETIME2 (0) NULL,
    [EndDate]     DATETIME2 (0) NULL,
    [NewId]       INT           DEFAULT (CONVERT([int],CONVERT([varbinary](4000),newid()))) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_EmployeeTitle_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_EmployeeTitle_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_EmployeeTitle_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_EmployeeTitle_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_EmployeeTitle] PRIMARY KEY CLUSTERED ([id] ASC)
);


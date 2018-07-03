CREATE TABLE [dbo].[StatusTypes] (
    [Name]        VARCHAR (50)  NOT NULL,
    [Description] VARCHAR (256) NULL,
    [Active]      BIT           CONSTRAINT [DF_StatusTypes_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_StatusTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_StatusTypes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_StatusTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_StatusTypes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_StatusTypes] PRIMARY KEY CLUSTERED ([Name] ASC)
);


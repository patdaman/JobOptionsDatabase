CREATE TABLE [dbo].[StateTypes] (
    [Name]        VARCHAR (128) NOT NULL,
    [Description] VARCHAR (128) NULL,
    [Active]      BIT           CONSTRAINT [DF_StateTypes_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_StateTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_StateTypes_CreateUser] DEFAULT (suser_name()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_StateTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_StateTypes_ModifyUser] DEFAULT (suser_name()) NOT NULL,
    CONSTRAINT [PK_StateTypes] PRIMARY KEY CLUSTERED ([Name] ASC)
);


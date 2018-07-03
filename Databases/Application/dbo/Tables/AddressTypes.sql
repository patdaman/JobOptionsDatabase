CREATE TABLE [dbo].[AddressTypes] (
    [Name]        VARCHAR (50)  NOT NULL,
    [Description] VARCHAR (256) NULL,
    [Active]      BIT           NOT NULL,
    [CreateDate]  DATETIME2 (0) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_AddressTypes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_AddressTypes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_AddressTypes] PRIMARY KEY CLUSTERED ([Name] ASC)
);


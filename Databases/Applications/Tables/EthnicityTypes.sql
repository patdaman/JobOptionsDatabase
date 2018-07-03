CREATE TABLE [dbo].[EthnicityTypes] (
    [Name]        VARCHAR (50)  NOT NULL,
    [Description] VARCHAR (256) NULL,
    [Active]      BIT           CONSTRAINT [DF_EthnicityTypes_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_EthnicityTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_EthnicityTypes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_EthnicityTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_EthnicityTypes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_EthnicityTypes] PRIMARY KEY CLUSTERED ([Name] ASC)
);


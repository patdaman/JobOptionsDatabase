CREATE TABLE [dbo].[DisabilityTypes] (
    [Name]        VARCHAR (128) NOT NULL,
    [Description] VARCHAR (256) NULL,
    [Active]      BIT           CONSTRAINT [DF_DisabilityTypes_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_DisabilityTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_DisabilityTypes_CreateUser] DEFAULT (suser_name()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_DisabilityTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_DisabilityTypes_ModifyUser] DEFAULT (suser_name()) NOT NULL,
    CONSTRAINT [PK_DisabilityTypes] PRIMARY KEY CLUSTERED ([Name] ASC)
);


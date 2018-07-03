CREATE TABLE [dbo].[PhoneTypes] (
    [Name]        VARCHAR (50)  NOT NULL,
    [Description] VARCHAR (256) NULL,
    [Active]      BIT           CONSTRAINT [DF_PhoneTypes_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_PhoneTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_PhoneTypes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_PhoneTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_PhoneTypes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_PhoneTypes] PRIMARY KEY CLUSTERED ([Name] ASC)
);


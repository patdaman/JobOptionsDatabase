CREATE TABLE [dbo].[CodeTypes] (
    [Code]        INT           NOT NULL,
    [Category]    NVARCHAR (50) NOT NULL,
    [Description] NVARCHAR (50) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_CodeTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_CodeTypes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_CodeTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_CodeTypes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [CodeTypes$PrimaryKey] PRIMARY KEY CLUSTERED ([Code] ASC)
);


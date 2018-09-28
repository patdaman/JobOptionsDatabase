CREATE TABLE [dbo].[SpecialtyCodeTypes] (
    [Code]        INT           NOT NULL,
    [Category]    NVARCHAR (50) NOT NULL,
    [Description] NVARCHAR (50) NOT NULL,
    [table]       NVARCHAR (3)  NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_SpecialtyCodeTypes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_SpecialtyCodeTypes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_SpecialtyCodeTypes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_SpecialtyCodeTypes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [SpecialtyCodeTypes$PrimaryKey] PRIMARY KEY CLUSTERED ([Code] ASC)
);


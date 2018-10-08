CREATE TABLE [dbo].[SpecialtyCodes] (
    [Code]         INT           NOT NULL,
    [Category]     VARCHAR (128) NULL,
    [Old_Category] INT           NULL,
    [Type]         VARCHAR (128) NULL,
    [Description]  VARCHAR (256) NOT NULL,
    [CreateDate]   DATETIME2 (0) CONSTRAINT [DF_SpecialtyCodes_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]   VARCHAR (128) CONSTRAINT [DF_SpecialtyCodes_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]   DATETIME2 (0) CONSTRAINT [DF_SpecialtyCodes_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]   VARCHAR (128) CONSTRAINT [DF_SpecialtyCodes_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [SpecialtyCodes$PrimaryKey] PRIMARY KEY CLUSTERED ([Code] ASC)
);




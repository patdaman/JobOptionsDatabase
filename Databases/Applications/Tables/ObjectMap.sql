CREATE TABLE [dbo].[ObjectMap] (
    [id]          INT           IDENTITY (10000, 1) NOT NULL,
    [Name]        VARCHAR (128) NOT NULL,
    [Description] VARCHAR (256) NULL,
    [TableName]   VARCHAR (128) NOT NULL,
    [SchemaName]  VARCHAR (128) CONSTRAINT [DF_ObjectMap_SchemaName] DEFAULT ('dbo') NOT NULL,
    [Active]      BIT           CONSTRAINT [DF_ObjectMap_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_ObjectMap_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_ObjectMap_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_ObjectMap_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_ObjectMap_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_ObjectMap] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UNQ_ObjectMap]
    ON [dbo].[ObjectMap]([Name] ASC, [Active] ASC) WHERE ([Active]=(1));


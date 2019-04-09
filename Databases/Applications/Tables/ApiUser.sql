CREATE TABLE [dbo].[ApiUser] (
    [id]          INT           IDENTITY (10000, 1) NOT NULL,
    [displayName] VARCHAR (128) NULL,
    [uid]         VARCHAR (128) NULL,
    [mail]        VARCHAR (128) NULL,
    CONSTRAINT [PK_ApiUser] PRIMARY KEY CLUSTERED ([id] ASC)
);


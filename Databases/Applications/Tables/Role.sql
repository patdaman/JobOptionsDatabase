CREATE TABLE [dbo].[Role] (
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [name]        NVARCHAR (255) NOT NULL,
    [description] NVARCHAR (255) NULL,
    [created]     DATETIME       NULL,
    [modified]    DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


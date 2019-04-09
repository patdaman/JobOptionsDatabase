CREATE TABLE [dbo].[userIdentity] (
    [provider]    NVARCHAR (255) NULL,
    [authScheme]  NVARCHAR (255) NULL,
    [externalId]  NVARCHAR (255) NULL,
    [profile]     NVARCHAR (255) NULL,
    [credentials] NVARCHAR (255) NULL,
    [created]     DATETIME       NULL,
    [modified]    DATETIME       NULL,
    [id]          INT            IDENTITY (1, 1) NOT NULL,
    [userId]      INT            NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


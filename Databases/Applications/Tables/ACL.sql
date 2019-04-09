CREATE TABLE [dbo].[ACL] (
    [model]         NVARCHAR (255) NULL,
    [property]      NVARCHAR (255) NULL,
    [accessType]    NVARCHAR (255) NULL,
    [permission]    NVARCHAR (255) NULL,
    [principalType] NVARCHAR (255) NULL,
    [principalId]   NVARCHAR (255) NULL,
    [id]            INT            IDENTITY (1, 1) NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


CREATE TABLE [dbo].[user] (
    [realm]             NVARCHAR (255) NULL,
    [username]          NVARCHAR (255) NULL,
    [password]          NVARCHAR (255) NOT NULL,
    [email]             NVARCHAR (255) NULL,
    [emailVerified]     BIT            NULL,
    [verificationToken] NVARCHAR (255) NULL,
    [id]                INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK__user__3213E83F2DDFA291] PRIMARY KEY CLUSTERED ([id] ASC)
);


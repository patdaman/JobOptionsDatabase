CREATE TABLE [dbo].[accessToken] (
    [id]      VARCHAR (128)  CONSTRAINT [DF__accessToken__id__62BA8D0A] DEFAULT (newid()) NOT NULL,
    [ttl]     INT            NULL,
    [scopes]  NVARCHAR (255) NULL,
    [created] DATETIME       NULL,
    [userId]  INT            NULL,
    CONSTRAINT [PK__accessTo__3213E83F78EC9870] PRIMARY KEY CLUSTERED ([id] ASC)
);


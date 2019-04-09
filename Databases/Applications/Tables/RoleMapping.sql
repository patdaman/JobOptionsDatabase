CREATE TABLE [dbo].[RoleMapping] (
    [id]            INT            IDENTITY (1, 1) NOT NULL,
    [principalType] NVARCHAR (255) NULL,
    [principalId]   NVARCHAR (255) NULL,
    [roleId]        INT            NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [principalId_NONCLUSTERED_ASC_idx]
    ON [dbo].[RoleMapping]([principalId] ASC);


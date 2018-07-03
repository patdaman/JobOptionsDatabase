CREATE TABLE [dbo].[Datatablenames] (
    [TableName]    NVARCHAR (50) NULL,
    [DataorStore]  NVARCHAR (50) NULL,
    [AttachAsName] NVARCHAR (50) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Datatablenames]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Datatablenames';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Datatablenames].[TableName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Datatablenames', @level2type = N'COLUMN', @level2name = N'TableName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Datatablenames].[DataorStore]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Datatablenames', @level2type = N'COLUMN', @level2name = N'DataorStore';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Datatablenames].[AttachAsName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Datatablenames', @level2type = N'COLUMN', @level2name = N'AttachAsName';


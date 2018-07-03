CREATE TABLE [dbo].[tblPRGLAccts] (
    [GLAcct]   NVARCHAR (255) NULL,
    [Paycode]  NVARCHAR (255) NOT NULL,
    [Dept]     NVARCHAR (255) NULL,
    [Position] NVARCHAR (255) NULL,
    [PosDesc]  NVARCHAR (255) NULL,
    CONSTRAINT [tblPRGLAccts$PrimaryKey] PRIMARY KEY CLUSTERED ([Paycode] ASC)
);


GO
CREATE NONCLUSTERED INDEX [tblPRGLAccts$Paycode]
    ON [dbo].[tblPRGLAccts]([Paycode] ASC);


GO
CREATE NONCLUSTERED INDEX [tblPRGLAccts$tblPRGLAcctsGLAcct]
    ON [dbo].[tblPRGLAccts]([GLAcct] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAccts].[Paycode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAccts', @level2type = N'INDEX', @level2name = N'tblPRGLAccts$Paycode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAccts].[tblPRGLAcctsGLAcct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAccts', @level2type = N'INDEX', @level2name = N'tblPRGLAccts$tblPRGLAcctsGLAcct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAccts]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAccts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAccts].[GLAcct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAccts', @level2type = N'COLUMN', @level2name = N'GLAcct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAccts].[Paycode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAccts', @level2type = N'COLUMN', @level2name = N'Paycode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAccts].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAccts', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAccts].[Position]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAccts', @level2type = N'COLUMN', @level2name = N'Position';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAccts].[PosDesc]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAccts', @level2type = N'COLUMN', @level2name = N'PosDesc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAccts].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAccts', @level2type = N'CONSTRAINT', @level2name = N'tblPRGLAccts$PrimaryKey';


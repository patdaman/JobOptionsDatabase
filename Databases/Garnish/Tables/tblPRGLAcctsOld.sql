CREATE TABLE [dbo].[tblPRGLAcctsOld] (
    [GLAcct]   NVARCHAR (255) NULL,
    [Paycode]  NVARCHAR (255) NULL,
    [Dept]     NVARCHAR (50)  NULL,
    [Position] NVARCHAR (255) NULL,
    [PosDesc]  NVARCHAR (255) NULL
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [tblPRGLAcctsOld$Paycode]
    ON [dbo].[tblPRGLAcctsOld]([Paycode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAcctsOld].[Paycode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAcctsOld', @level2type = N'INDEX', @level2name = N'tblPRGLAcctsOld$Paycode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAcctsOld]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAcctsOld';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAcctsOld].[GLAcct]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAcctsOld', @level2type = N'COLUMN', @level2name = N'GLAcct';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAcctsOld].[Paycode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAcctsOld', @level2type = N'COLUMN', @level2name = N'Paycode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAcctsOld].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAcctsOld', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAcctsOld].[Position]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAcctsOld', @level2type = N'COLUMN', @level2name = N'Position';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[tblPRGLAcctsOld].[PosDesc]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'tblPRGLAcctsOld', @level2type = N'COLUMN', @level2name = N'PosDesc';


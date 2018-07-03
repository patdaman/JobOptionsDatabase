CREATE TABLE [dbo].[DEPT] (
    [dept code] NVARCHAR (255) NULL,
    [dept]      NVARCHAR (255) NULL,
    [subcode]   NVARCHAR (255) NULL,
    CONSTRAINT [SSMA_CC$DEPT$dept code$disallow_zero_length] CHECK (len([dept code])>(0)),
    CONSTRAINT [SSMA_CC$DEPT$dept$disallow_zero_length] CHECK (len([dept])>(0))
);


GO
CREATE NONCLUSTERED INDEX [DEPT$dept code]
    ON [dbo].[DEPT]([dept code] ASC);


GO
CREATE NONCLUSTERED INDEX [DEPT$subcode]
    ON [dbo].[DEPT]([subcode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPT].[dept code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPT', @level2type = N'INDEX', @level2name = N'DEPT$dept code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPT].[subcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPT', @level2type = N'INDEX', @level2name = N'DEPT$subcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPT].[dept code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPT', @level2type = N'COLUMN', @level2name = N'dept code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPT].[dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPT', @level2type = N'COLUMN', @level2name = N'dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPT].[subcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPT', @level2type = N'COLUMN', @level2name = N'subcode';


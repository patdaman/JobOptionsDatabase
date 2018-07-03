CREATE TABLE [dbo].[DEPTold] (
    [dept code] NVARCHAR (255) NULL,
    [dept]      NVARCHAR (255) NULL,
    CONSTRAINT [SSMA_CC$DEPTold$dept code$disallow_zero_length] CHECK (len([dept code])>(0)),
    CONSTRAINT [SSMA_CC$DEPTold$dept$disallow_zero_length] CHECK (len([dept])>(0))
);


GO
CREATE NONCLUSTERED INDEX [DEPTold$dept code]
    ON [dbo].[DEPTold]([dept code] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPTold].[dept code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPTold', @level2type = N'INDEX', @level2name = N'DEPTold$dept code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPTold]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPTold';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPTold].[dept code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPTold', @level2type = N'COLUMN', @level2name = N'dept code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[DEPTold].[dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DEPTold', @level2type = N'COLUMN', @level2name = N'dept';


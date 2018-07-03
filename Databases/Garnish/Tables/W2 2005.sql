CREATE TABLE [dbo].[W2 2005] (
    [Control]  INT           NULL,
    [employid] NVARCHAR (50) NULL,
    CONSTRAINT [SSMA_CC$W2 2005$employid$disallow_zero_length] CHECK (len([employid])>(0))
);


GO
CREATE NONCLUSTERED INDEX [W2 2005$employid]
    ON [dbo].[W2 2005]([employid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[W2 2005].[employid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'W2 2005', @level2type = N'INDEX', @level2name = N'W2 2005$employid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[W2 2005]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'W2 2005';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[W2 2005].[Control]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'W2 2005', @level2type = N'COLUMN', @level2name = N'Control';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[W2 2005].[employid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'W2 2005', @level2type = N'COLUMN', @level2name = N'employid';


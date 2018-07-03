CREATE TABLE [dbo].[nmclookup] (
    [employid] NVARCHAR (50) NULL,
    CONSTRAINT [SSMA_CC$nmclookup$employid$disallow_zero_length] CHECK (len([employid])>(0))
);


GO
CREATE NONCLUSTERED INDEX [nmclookup$employid]
    ON [dbo].[nmclookup]([employid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[nmclookup].[employid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'nmclookup', @level2type = N'INDEX', @level2name = N'nmclookup$employid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[nmclookup]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'nmclookup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[nmclookup].[employid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'nmclookup', @level2type = N'COLUMN', @level2name = N'employid';


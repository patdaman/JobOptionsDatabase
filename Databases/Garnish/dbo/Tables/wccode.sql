CREATE TABLE [dbo].[wccode] (
    [wc]     NVARCHAR (50) NULL,
    [wc tax] NVARCHAR (50) NULL,
    CONSTRAINT [SSMA_CC$wccode$wc tax$disallow_zero_length] CHECK (len([wc tax])>(0)),
    CONSTRAINT [SSMA_CC$wccode$wc$disallow_zero_length] CHECK (len([wc])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[wccode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'wccode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[wccode].[wc]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'wccode', @level2type = N'COLUMN', @level2name = N'wc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[wccode].[wc tax]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'wccode', @level2type = N'COLUMN', @level2name = N'wc tax';


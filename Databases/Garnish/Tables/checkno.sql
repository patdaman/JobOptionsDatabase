CREATE TABLE [dbo].[checkno] (
    [checkno]        NVARCHAR (50) NULL,
    [payadv]         FLOAT (53)    DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [SSMA_CC$checkno$checkno$disallow_zero_length] CHECK (len([checkno])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[checkno]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'checkno';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[checkno].[checkno]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'checkno', @level2type = N'COLUMN', @level2name = N'checkno';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[checkno].[payadv]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'checkno', @level2type = N'COLUMN', @level2name = N'payadv';


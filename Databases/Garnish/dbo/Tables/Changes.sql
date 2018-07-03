CREATE TABLE [dbo].[Changes] (
    [date]           DATETIME2 (0)  NULL,
    [Changes]        NVARCHAR (MAX) NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [SSMA_CC$Changes$Changes$disallow_zero_length] CHECK (len([Changes])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Changes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Changes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Changes].[date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Changes', @level2type = N'COLUMN', @level2name = N'date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Changes].[Changes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Changes', @level2type = N'COLUMN', @level2name = N'Changes';


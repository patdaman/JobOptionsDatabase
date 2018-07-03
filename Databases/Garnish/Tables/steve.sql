CREATE TABLE [dbo].[steve] (
    [empid]          FLOAT (53)     NULL,
    [rate]           FLOAT (53)     NULL,
    [code]           NVARCHAR (255) NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [steve$code]
    ON [dbo].[steve]([code] ASC);


GO
CREATE NONCLUSTERED INDEX [steve$empid]
    ON [dbo].[steve]([empid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[steve].[code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'steve', @level2type = N'INDEX', @level2name = N'steve$code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[steve].[empid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'steve', @level2type = N'INDEX', @level2name = N'steve$empid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[steve]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'steve';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[steve].[empid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'steve', @level2type = N'COLUMN', @level2name = N'empid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[steve].[rate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'steve', @level2type = N'COLUMN', @level2name = N'rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[steve].[code]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'steve', @level2type = N'COLUMN', @level2name = N'code';


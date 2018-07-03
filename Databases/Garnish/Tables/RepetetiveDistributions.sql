CREATE TABLE [dbo].[RepetetiveDistributions] (
    [ID]                    INT           IDENTITY (1, 1) NOT NULL,
    [Site]                  NVARCHAR (50) NULL,
    [DISTRIBUTIONS ACCOUNT] NVARCHAR (50) NULL,
    [DISTRIBUTIONS TYPE]    NVARCHAR (50) NULL,
    [DEBIT AMOUNT]          MONEY         DEFAULT ((0)) NULL,
    [CREDIT AMOUNT]         MONEY         DEFAULT ((0)) NULL,
    [reid]                  INT           DEFAULT ((0)) NULL,
    CONSTRAINT [RepetetiveDistributions$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$RepetetiveDistributions$DISTRIBUTIONS ACCOUNT$disallow_zero_length] CHECK (len([DISTRIBUTIONS ACCOUNT])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveDistributions$DISTRIBUTIONS TYPE$disallow_zero_length] CHECK (len([DISTRIBUTIONS TYPE])>(0)),
    CONSTRAINT [SSMA_CC$RepetetiveDistributions$Site$disallow_zero_length] CHECK (len([Site])>(0))
);


GO
CREATE NONCLUSTERED INDEX [RepetetiveDistributions$reid]
    ON [dbo].[RepetetiveDistributions]([reid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions', @level2type = N'INDEX', @level2name = N'RepetetiveDistributions$reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions].[Site]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions', @level2type = N'COLUMN', @level2name = N'Site';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions].[DISTRIBUTIONS ACCOUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions', @level2type = N'COLUMN', @level2name = N'DISTRIBUTIONS ACCOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions].[DISTRIBUTIONS TYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions', @level2type = N'COLUMN', @level2name = N'DISTRIBUTIONS TYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions].[DEBIT AMOUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions', @level2type = N'COLUMN', @level2name = N'DEBIT AMOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions].[CREDIT AMOUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions', @level2type = N'COLUMN', @level2name = N'CREDIT AMOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions', @level2type = N'COLUMN', @level2name = N'reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'RepetetiveDistributions', @level2type = N'CONSTRAINT', @level2name = N'RepetetiveDistributions$PrimaryKey';


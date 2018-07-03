CREATE TABLE [dbo].[DISTRIBUTIONEXPORT] (
    [ID]                    INT           IDENTITY (1, 1) NOT NULL,
    [IVC ID]                INT           DEFAULT ((0)) NULL,
    [DISTRIBUTIONS ACCOUNT] NVARCHAR (50) NULL,
    [DISTRIBUTIONS TYPE]    NVARCHAR (50) NULL,
    [DEBIT AMOUNT]          FLOAT (53)    DEFAULT ((0)) NULL,
    [CREDIT AMOUNT]         FLOAT (53)    DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]        ROWVERSION    NOT NULL,
    CONSTRAINT [DISTRIBUTIONEXPORT$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$DISTRIBUTIONEXPORT$DISTRIBUTIONS ACCOUNT$disallow_zero_length] CHECK (len([DISTRIBUTIONS ACCOUNT])>(0)),
    CONSTRAINT [SSMA_CC$DISTRIBUTIONEXPORT$DISTRIBUTIONS TYPE$disallow_zero_length] CHECK (len([DISTRIBUTIONS TYPE])>(0))
);


GO
CREATE NONCLUSTERED INDEX [DISTRIBUTIONEXPORT$IVC ID]
    ON [dbo].[DISTRIBUTIONEXPORT]([IVC ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[DISTRIBUTIONEXPORT].[IVC ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DISTRIBUTIONEXPORT', @level2type = N'INDEX', @level2name = N'DISTRIBUTIONEXPORT$IVC ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[DISTRIBUTIONEXPORT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DISTRIBUTIONEXPORT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[DISTRIBUTIONEXPORT].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DISTRIBUTIONEXPORT', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[DISTRIBUTIONEXPORT].[IVC ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DISTRIBUTIONEXPORT', @level2type = N'COLUMN', @level2name = N'IVC ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[DISTRIBUTIONEXPORT].[DISTRIBUTIONS ACCOUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DISTRIBUTIONEXPORT', @level2type = N'COLUMN', @level2name = N'DISTRIBUTIONS ACCOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[DISTRIBUTIONEXPORT].[DISTRIBUTIONS TYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DISTRIBUTIONEXPORT', @level2type = N'COLUMN', @level2name = N'DISTRIBUTIONS TYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[DISTRIBUTIONEXPORT].[DEBIT AMOUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DISTRIBUTIONEXPORT', @level2type = N'COLUMN', @level2name = N'DEBIT AMOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[DISTRIBUTIONEXPORT].[CREDIT AMOUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DISTRIBUTIONEXPORT', @level2type = N'COLUMN', @level2name = N'CREDIT AMOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[DISTRIBUTIONEXPORT].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'DISTRIBUTIONEXPORT', @level2type = N'CONSTRAINT', @level2name = N'DISTRIBUTIONEXPORT$PrimaryKey';


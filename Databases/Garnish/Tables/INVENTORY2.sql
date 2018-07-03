CREATE TABLE [dbo].[INVENTORY2] (
    [ID]     INT           IDENTITY (1, 1) NOT NULL,
    [Item]   NVARCHAR (80) NULL,
    [Amount] MONEY         DEFAULT ((0)) NULL,
    [reid]   INT           DEFAULT ((0)) NULL,
    [LSID]   INT           DEFAULT ((0)) NULL,
    [LLID]   INT           DEFAULT ((0)) NULL,
    CONSTRAINT [INVENTORY2$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$INVENTORY2$Item$disallow_zero_length] CHECK (len([Item])>(0))
);


GO
CREATE NONCLUSTERED INDEX [INVENTORY2$LLID]
    ON [dbo].[INVENTORY2]([LLID] ASC);


GO
CREATE NONCLUSTERED INDEX [INVENTORY2$LSID]
    ON [dbo].[INVENTORY2]([LSID] ASC);


GO
CREATE NONCLUSTERED INDEX [INVENTORY2$reid]
    ON [dbo].[INVENTORY2]([reid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[LLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'INDEX', @level2name = N'INVENTORY2$LLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[LSID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'INDEX', @level2name = N'INVENTORY2$LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'INDEX', @level2name = N'INVENTORY2$reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[Item]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'COLUMN', @level2name = N'Item';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[Amount]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'COLUMN', @level2name = N'Amount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Repetetive Posting ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'COLUMN', @level2name = N'reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'COLUMN', @level2name = N'reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'LaundrySiteID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'COLUMN', @level2name = N'LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[LSID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'COLUMN', @level2name = N'LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[LLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'COLUMN', @level2name = N'LLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[INVENTORY2].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'INVENTORY2', @level2type = N'CONSTRAINT', @level2name = N'INVENTORY2$PrimaryKey';


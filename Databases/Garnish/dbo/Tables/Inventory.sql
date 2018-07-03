CREATE TABLE [dbo].[Inventory] (
    [ID]     INT           IDENTITY (1, 1) NOT NULL,
    [Item]   NVARCHAR (80) NULL,
    [Amount] MONEY         DEFAULT ((0)) NULL,
    [reid]   INT           DEFAULT ((0)) NULL,
    [LSID]   INT           DEFAULT ((0)) NULL,
    [LLID]   INT           DEFAULT ((0)) NULL,
    CONSTRAINT [Inventory$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$Inventory$Item$disallow_zero_length] CHECK (len([Item])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Inventory$LLID]
    ON [dbo].[Inventory]([LLID] ASC);


GO
CREATE NONCLUSTERED INDEX [Inventory$LSID]
    ON [dbo].[Inventory]([LSID] ASC);


GO
CREATE NONCLUSTERED INDEX [Inventory$reid]
    ON [dbo].[Inventory]([reid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[LLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'INDEX', @level2name = N'Inventory$LLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[LSID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'INDEX', @level2name = N'Inventory$LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'INDEX', @level2name = N'Inventory$reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[Item]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Item';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[Amount]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Amount';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Repetetive Posting ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'LaundrySiteID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[LSID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[LLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'LLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Inventory].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'CONSTRAINT', @level2name = N'Inventory$PrimaryKey';


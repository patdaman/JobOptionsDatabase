CREATE TABLE [dbo].[hourlyitems] (
    [id]             INT           IDENTITY (1, 1) NOT NULL,
    [Item]           NVARCHAR (50) NULL,
    [uom]            NVARCHAR (10) NULL,
    [rate]           FLOAT (53)    DEFAULT ((0)) NULL,
    [reid]           INT           DEFAULT ((0)) NULL,
    [deptcode]       NVARCHAR (50) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [hourlyitems$PrimaryKey] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [SSMA_CC$hourlyitems$Item$disallow_zero_length] CHECK (len([Item])>(0)),
    CONSTRAINT [SSMA_CC$hourlyitems$uom$disallow_zero_length] CHECK (len([uom])>(0))
);


GO
CREATE NONCLUSTERED INDEX [hourlyitems$deptcode]
    ON [dbo].[hourlyitems]([deptcode] ASC);


GO
CREATE NONCLUSTERED INDEX [hourlyitems$id]
    ON [dbo].[hourlyitems]([id] ASC);


GO
CREATE NONCLUSTERED INDEX [hourlyitems$reid]
    ON [dbo].[hourlyitems]([reid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[deptcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'INDEX', @level2name = N'hourlyitems$deptcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[id]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'INDEX', @level2name = N'hourlyitems$id';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'INDEX', @level2name = N'hourlyitems$reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[id]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'COLUMN', @level2name = N'id';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[Item]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'COLUMN', @level2name = N'Item';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[uom]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'COLUMN', @level2name = N'uom';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[rate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'COLUMN', @level2name = N'rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'COLUMN', @level2name = N'reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[deptcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'COLUMN', @level2name = N'deptcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyitems', @level2type = N'CONSTRAINT', @level2name = N'hourlyitems$PrimaryKey';


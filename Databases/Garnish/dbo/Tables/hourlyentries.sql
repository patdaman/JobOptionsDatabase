CREATE TABLE [dbo].[hourlyentries] (
    [reid]           INT           DEFAULT ((0)) NULL,
    [month]          INT           DEFAULT ((0)) NULL,
    [year]           INT           DEFAULT ((0)) NULL,
    [item]           NVARCHAR (50) NULL,
    [hours]          FLOAT (53)    DEFAULT ((0)) NULL,
    [rate]           REAL          DEFAULT ((0)) NULL,
    [hid]            INT           DEFAULT ((0)) NULL,
    [uom]            NVARCHAR (10) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [SSMA_CC$hourlyentries$item$disallow_zero_length] CHECK (len([item])>(0)),
    CONSTRAINT [SSMA_CC$hourlyentries$uom$disallow_zero_length] CHECK (len([uom])>(0))
);


GO
CREATE NONCLUSTERED INDEX [hourlyentries$hid]
    ON [dbo].[hourlyentries]([hid] ASC);


GO
CREATE NONCLUSTERED INDEX [hourlyentries$reid]
    ON [dbo].[hourlyentries]([reid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[hid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'INDEX', @level2name = N'hourlyentries$hid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'INDEX', @level2name = N'hourlyentries$reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'COLUMN', @level2name = N'reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[month]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'COLUMN', @level2name = N'month';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'COLUMN', @level2name = N'year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[item]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'COLUMN', @level2name = N'item';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[hours]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'COLUMN', @level2name = N'hours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[rate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'COLUMN', @level2name = N'rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[hid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'COLUMN', @level2name = N'hid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyentries].[uom]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'hourlyentries', @level2type = N'COLUMN', @level2name = N'uom';


CREATE TABLE [dbo].[LaunInv] (
    [Month] NVARCHAR (50) NULL,
    [lsid]  INT           DEFAULT ((0)) NULL,
    [year]  INT           DEFAULT ((0)) NULL,
    [fy]    INT           DEFAULT ((0)) NULL,
    [fm]    INT           DEFAULT ((0)) NULL,
    CONSTRAINT [SSMA_CC$LaunInv$Month$disallow_zero_length] CHECK (len([Month])>(0))
);


GO
CREATE NONCLUSTERED INDEX [LaunInv$lsid]
    ON [dbo].[LaunInv]([lsid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaunInv].[lsid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaunInv', @level2type = N'INDEX', @level2name = N'LaunInv$lsid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaunInv]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaunInv';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaunInv].[Month]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaunInv', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaunInv].[lsid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaunInv', @level2type = N'COLUMN', @level2name = N'lsid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaunInv].[year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaunInv', @level2type = N'COLUMN', @level2name = N'year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaunInv].[fy]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaunInv', @level2type = N'COLUMN', @level2name = N'fy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaunInv].[fm]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaunInv', @level2type = N'COLUMN', @level2name = N'fm';


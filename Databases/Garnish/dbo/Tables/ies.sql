CREATE TABLE [dbo].[ies] (
    [fy]      INT           DEFAULT ((0)) NULL,
    [fm]      INT           DEFAULT ((0)) NULL,
    [pos]     NVARCHAR (50) NULL,
    [month]   INT           DEFAULT ((0)) NULL,
    [year]    INT           DEFAULT ((0)) NULL,
    [ivcdate] DATETIME2 (0) NULL,
    CONSTRAINT [SSMA_CC$ies$pos$disallow_zero_length] CHECK (len([pos])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ies]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ies';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ies].[fy]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ies', @level2type = N'COLUMN', @level2name = N'fy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ies].[fm]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ies', @level2type = N'COLUMN', @level2name = N'fm';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ies].[pos]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ies', @level2type = N'COLUMN', @level2name = N'pos';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ies].[month]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ies', @level2type = N'COLUMN', @level2name = N'month';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ies].[year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ies', @level2type = N'COLUMN', @level2name = N'year';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[ies].[ivcdate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ies', @level2type = N'COLUMN', @level2name = N'ivcdate';


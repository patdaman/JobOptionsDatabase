CREATE TABLE [dbo].[LaundryLocs] (
    [LSID]     INT           DEFAULT ((0)) NULL,
    [LLID]     INT           IDENTITY (1, 1) NOT NULL,
    [Location] NVARCHAR (50) NULL,
    CONSTRAINT [SSMA_CC$LaundryLocs$Location$disallow_zero_length] CHECK (len([Location])>(0))
);


GO
CREATE NONCLUSTERED INDEX [LaundryLocs$LLID]
    ON [dbo].[LaundryLocs]([LLID] ASC);


GO
CREATE NONCLUSTERED INDEX [LaundryLocs$LSID]
    ON [dbo].[LaundryLocs]([LSID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryLocs].[LLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryLocs', @level2type = N'INDEX', @level2name = N'LaundryLocs$LLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryLocs].[LSID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryLocs', @level2type = N'INDEX', @level2name = N'LaundryLocs$LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryLocs]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryLocs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryLocs].[LSID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryLocs', @level2type = N'COLUMN', @level2name = N'LSID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryLocs].[LLID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryLocs', @level2type = N'COLUMN', @level2name = N'LLID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[LaundryLocs].[Location]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'LaundryLocs', @level2type = N'COLUMN', @level2name = N'Location';


CREATE TABLE [dbo].[Month] (
    [Month]  NVARCHAR (10) NULL,
    [number] INT           DEFAULT ((0)) NULL,
    CONSTRAINT [SSMA_CC$Month$Month$disallow_zero_length] CHECK (len([Month])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Month$number]
    ON [dbo].[Month]([number] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Month].[number]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Month', @level2type = N'INDEX', @level2name = N'Month$number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Month]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Month].[Month]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Month', @level2type = N'COLUMN', @level2name = N'Month';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Month].[number]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Month', @level2type = N'COLUMN', @level2name = N'number';


CREATE TABLE [dbo].[he] (
    [reid]  INT DEFAULT ((0)) NULL,
    [month] INT DEFAULT ((0)) NULL,
    [year]  INT DEFAULT ((0)) NULL
);


GO
CREATE NONCLUSTERED INDEX [he$reid]
    ON [dbo].[he]([reid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[he].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'he', @level2type = N'INDEX', @level2name = N'he$reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[he]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'he';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[he].[reid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'he', @level2type = N'COLUMN', @level2name = N'reid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[he].[month]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'he', @level2type = N'COLUMN', @level2name = N'month';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[he].[year]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'he', @level2type = N'COLUMN', @level2name = N'year';


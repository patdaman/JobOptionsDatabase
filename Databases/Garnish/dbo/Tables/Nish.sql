CREATE TABLE [dbo].[Nish] (
    [NISH PERCENT]   REAL       DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Nish]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Nish';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[Nish].[NISH PERCENT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Nish', @level2type = N'COLUMN', @level2name = N'NISH PERCENT';


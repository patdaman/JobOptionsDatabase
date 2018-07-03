CREATE TABLE [dbo].[AF100006] (
    [SEQUENCE1]      FLOAT (53)    NOT NULL,
    [PPERADSC]       NVARCHAR (51) NOT NULL,
    [PPERADAM]       FLOAT (53)    NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [AF100006$PKAF10000] PRIMARY KEY CLUSTERED ([SEQUENCE1] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF100006]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF100006';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF100006].[SEQUENCE1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF100006', @level2type = N'COLUMN', @level2name = N'SEQUENCE1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF100006].[PPERADSC]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF100006', @level2type = N'COLUMN', @level2name = N'PPERADSC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF100006].[PPERADAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF100006', @level2type = N'COLUMN', @level2name = N'PPERADAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF100006].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF100006', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF100006].[PKAF10000]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF100006', @level2type = N'CONSTRAINT', @level2name = N'AF100006$PKAF10000';


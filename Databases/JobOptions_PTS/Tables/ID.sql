CREATE TABLE [dbo].[ID] (
    [DEID] INT DEFAULT ((0)) NULL
);


GO
CREATE NONCLUSTERED INDEX [ID$DEID]
    ON [dbo].[ID]([DEID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[ID].[DEID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ID', @level2type = N'INDEX', @level2name = N'ID$DEID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[ID].[DEID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'ID', @level2type = N'COLUMN', @level2name = N'DEID';


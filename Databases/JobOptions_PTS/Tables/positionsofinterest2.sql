CREATE TABLE [dbo].[positionsofinterest2] (
    [IDRef]          INT          DEFAULT ((0)) NULL,
    [TitleCode]      NVARCHAR (3) NOT NULL,
    [Dept]           NVARCHAR (3) NULL,
    [SSMA_TimeStamp] ROWVERSION   NOT NULL,
    CONSTRAINT [SSMA_CC$positionsofinterest2$Dept$disallow_zero_length] CHECK (len([Dept])>(0)),
    CONSTRAINT [SSMA_CC$positionsofinterest2$TitleCode$disallow_zero_length] CHECK (len([TitleCode])>(0))
);


GO
CREATE NONCLUSTERED INDEX [positionsofinterest2$Dept]
    ON [dbo].[positionsofinterest2]([Dept] ASC);


GO
CREATE NONCLUSTERED INDEX [positionsofinterest2$ID]
    ON [dbo].[positionsofinterest2]([IDRef] ASC);


GO
CREATE NONCLUSTERED INDEX [positionsofinterest2$TitleCode]
    ON [dbo].[positionsofinterest2]([TitleCode] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [positionsofinterest2$TitleDept]
    ON [dbo].[positionsofinterest2]([TitleCode] ASC, [Dept] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[positionsofinterest2].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'positionsofinterest2', @level2type = N'INDEX', @level2name = N'positionsofinterest2$Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[positionsofinterest2].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'positionsofinterest2', @level2type = N'INDEX', @level2name = N'positionsofinterest2$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[positionsofinterest2].[TitleCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'positionsofinterest2', @level2type = N'INDEX', @level2name = N'positionsofinterest2$TitleCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[positionsofinterest2].[TitleDept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'positionsofinterest2', @level2type = N'INDEX', @level2name = N'positionsofinterest2$TitleDept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[positionsofinterest2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'positionsofinterest2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[positionsofinterest2].[IDRef]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'positionsofinterest2', @level2type = N'COLUMN', @level2name = N'IDRef';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[positionsofinterest2].[TitleCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'positionsofinterest2', @level2type = N'COLUMN', @level2name = N'TitleCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[positionsofinterest2].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'positionsofinterest2', @level2type = N'COLUMN', @level2name = N'Dept';


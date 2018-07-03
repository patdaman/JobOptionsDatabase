CREATE TABLE [dbo].[CaseCodes] (
    [CaseCode]       NVARCHAR (2)  NOT NULL,
    [Description]    NVARCHAR (50) NULL,
    [Title]          BIT           DEFAULT ((0)) NULL,
    [Services]       NVARCHAR (40) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [CaseCodes$PrimaryKey] PRIMARY KEY CLUSTERED ([CaseCode] ASC),
    CONSTRAINT [SSMA_CC$CaseCodes$CaseCode$disallow_zero_length] CHECK (len([CaseCode])>(0)),
    CONSTRAINT [SSMA_CC$CaseCodes$Description$disallow_zero_length] CHECK (len([Description])>(0)),
    CONSTRAINT [SSMA_CC$CaseCodes$Services$disallow_zero_length] CHECK (len([Services])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodes].[CaseCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodes', @level2type = N'COLUMN', @level2name = N'CaseCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodes].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodes', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodes].[Title]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodes', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodes].[Services]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodes', @level2type = N'COLUMN', @level2name = N'Services';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[CaseCodes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'CaseCodes', @level2type = N'CONSTRAINT', @level2name = N'CaseCodes$PrimaryKey';


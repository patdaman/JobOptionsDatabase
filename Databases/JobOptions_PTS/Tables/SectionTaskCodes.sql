CREATE TABLE [dbo].[SectionTaskCodes] (
    [SectionTaskCode] NVARCHAR (2)  NOT NULL,
    [Description]     NVARCHAR (50) NULL,
    [Services]        NVARCHAR (40) NULL,
    [SSMA_TimeStamp]  ROWVERSION    NOT NULL,
    CONSTRAINT [SectionTaskCodes$PrimaryKey] PRIMARY KEY CLUSTERED ([SectionTaskCode] ASC),
    CONSTRAINT [SSMA_CC$SectionTaskCodes$Description$disallow_zero_length] CHECK (len([Description])>(0)),
    CONSTRAINT [SSMA_CC$SectionTaskCodes$SectionTaskCode$disallow_zero_length] CHECK (len([SectionTaskCode])>(0)),
    CONSTRAINT [SSMA_CC$SectionTaskCodes$Services$disallow_zero_length] CHECK (len([Services])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodes].[SectionTaskCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodes', @level2type = N'COLUMN', @level2name = N'SectionTaskCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodes].[Description]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodes', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodes].[Services]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodes', @level2type = N'COLUMN', @level2name = N'Services';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionTaskCodes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionTaskCodes', @level2type = N'CONSTRAINT', @level2name = N'SectionTaskCodes$PrimaryKey';


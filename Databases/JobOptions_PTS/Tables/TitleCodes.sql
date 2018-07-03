CREATE TABLE [dbo].[TitleCodes] (
    [TitleCode]       NVARCHAR (3)  NOT NULL,
    [Desc]            NVARCHAR (50) NULL,
    [Status]          NVARCHAR (20) NULL,
    [EEOWageCode]     NVARCHAR (2)  NULL,
    [DivisionCode]    INT           NULL,
    [EEOCategoryCode] NVARCHAR (2)  NULL,
    [Active]          BIT           DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]  ROWVERSION    NOT NULL,
    CONSTRAINT [TitleCodes$PrimaryKey] PRIMARY KEY CLUSTERED ([TitleCode] ASC),
    CONSTRAINT [SSMA_CC$TitleCodes$Desc$disallow_zero_length] CHECK (len([Desc])>(0)),
    CONSTRAINT [SSMA_CC$TitleCodes$EEOCategoryCode$disallow_zero_length] CHECK (len([EEOCategoryCode])>(0)),
    CONSTRAINT [SSMA_CC$TitleCodes$EEOWageCode$disallow_zero_length] CHECK (len([EEOWageCode])>(0)),
    CONSTRAINT [SSMA_CC$TitleCodes$Status$disallow_zero_length] CHECK (len([Status])>(0)),
    CONSTRAINT [SSMA_CC$TitleCodes$TitleCode$disallow_zero_length] CHECK (len([TitleCode])>(0)),
    CONSTRAINT [TitleCodes${AEC83304-AF43-4FB1-8568-E7A8A2807FBE}] FOREIGN KEY ([DivisionCode]) REFERENCES [dbo].[SpecialtyCodes] ([Code])
);


GO
CREATE NONCLUSTERED INDEX [TitleCodes${AEC83304-AF43-4FB1-8568-E7A8A2807FBE}]
    ON [dbo].[TitleCodes]([DivisionCode] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [TitleCodes$Desc]
    ON [dbo].[TitleCodes]([Desc] ASC);


GO
CREATE NONCLUSTERED INDEX [TitleCodes$DivisionCode]
    ON [dbo].[TitleCodes]([DivisionCode] ASC);


GO
CREATE NONCLUSTERED INDEX [TitleCodes$EEOCategoryCode]
    ON [dbo].[TitleCodes]([EEOCategoryCode] ASC);


GO
CREATE NONCLUSTERED INDEX [TitleCodes$EEOWageCode]
    ON [dbo].[TitleCodes]([EEOWageCode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[{AEC83304-AF43-4FB1-8568-E7A8A2807FBE}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'INDEX', @level2name = N'TitleCodes${AEC83304-AF43-4FB1-8568-E7A8A2807FBE}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[Desc]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'INDEX', @level2name = N'TitleCodes$Desc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[DivisionCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'INDEX', @level2name = N'TitleCodes$DivisionCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[EEOCategoryCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'INDEX', @level2name = N'TitleCodes$EEOCategoryCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[EEOWageCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'INDEX', @level2name = N'TitleCodes$EEOWageCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[TitleCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'COLUMN', @level2name = N'TitleCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[Desc]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'COLUMN', @level2name = N'Desc';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[Status]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[EEOWageCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'COLUMN', @level2name = N'EEOWageCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[DivisionCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'COLUMN', @level2name = N'DivisionCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[EEOCategoryCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'COLUMN', @level2name = N'EEOCategoryCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[Active]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[{AEC83304-AF43-4FB1-8568-E7A8A2807FBE}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'CONSTRAINT', @level2name = N'TitleCodes${AEC83304-AF43-4FB1-8568-E7A8A2807FBE}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[TitleCodes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'TitleCodes', @level2type = N'CONSTRAINT', @level2name = N'TitleCodes$PrimaryKey';


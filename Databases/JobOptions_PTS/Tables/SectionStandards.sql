CREATE TABLE [dbo].[SectionStandards] (
    [Dept]           NVARCHAR (3)  NOT NULL,
    [Section]        NVARCHAR (6)  NOT NULL,
    [Standard]       FLOAT (53)    NULL,
    [EffDate]        DATETIME2 (0) NULL,
    [#OfTests]       FLOAT (53)    NULL,
    [#OfPeople]      FLOAT (53)    NULL,
    [#]              INT           DEFAULT (CONVERT([int],CONVERT([varbinary](4000),newid()))) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [SectionStandards$PrimaryKey] PRIMARY KEY CLUSTERED ([Dept] ASC, [Section] ASC),
    CONSTRAINT [SSMA_CC$SectionStandards$Dept$disallow_zero_length] CHECK (len([Dept])>(0)),
    CONSTRAINT [SSMA_CC$SectionStandards$Section$disallow_zero_length] CHECK (len([Section])>(0)),
    CONSTRAINT [SectionStandards${F0DC20AB-2F85-47BB-8CF1-715E1ECAF900}] FOREIGN KEY ([Dept]) REFERENCES [dbo].[Sites] ([Dept]) ON UPDATE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [SectionStandards$#]
    ON [dbo].[SectionStandards]([#] ASC);


GO
CREATE NONCLUSTERED INDEX [SectionStandards${F0DC20AB-2F85-47BB-8CF1-715E1ECAF900}]
    ON [dbo].[SectionStandards]([Dept] ASC);


GO
CREATE NONCLUSTERED INDEX [SectionStandards$Dept]
    ON [dbo].[SectionStandards]([Dept] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'INDEX', @level2name = N'SectionStandards$#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[{F0DC20AB-2F85-47BB-8CF1-715E1ECAF900}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'INDEX', @level2name = N'SectionStandards${F0DC20AB-2F85-47BB-8CF1-715E1ECAF900}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'INDEX', @level2name = N'SectionStandards$Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[Section]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'COLUMN', @level2name = N'Section';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[Standard]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'COLUMN', @level2name = N'Standard';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[EffDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'COLUMN', @level2name = N'EffDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[#OfTests]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'COLUMN', @level2name = N'#OfTests';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[#OfPeople]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'COLUMN', @level2name = N'#OfPeople';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'COLUMN', @level2name = N'#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[{F0DC20AB-2F85-47BB-8CF1-715E1ECAF900}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'CONSTRAINT', @level2name = N'SectionStandards${F0DC20AB-2F85-47BB-8CF1-715E1ECAF900}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[SectionStandards].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SectionStandards', @level2type = N'CONSTRAINT', @level2name = N'SectionStandards$PrimaryKey';


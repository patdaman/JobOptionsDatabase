CREATE TABLE [dbo].[Holidays] (
    [Date]           DATETIME2 (0) NOT NULL,
    [Holiday]        NVARCHAR (50) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [Holidays$PrimaryKey] PRIMARY KEY CLUSTERED ([Date] ASC),
    CONSTRAINT [SSMA_CC$Holidays$Holiday$disallow_zero_length] CHECK (len([Holiday])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Holidays]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Holidays';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Holidays].[Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Holidays', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Holidays].[Holiday]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Holidays', @level2type = N'COLUMN', @level2name = N'Holiday';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Holidays].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Holidays', @level2type = N'CONSTRAINT', @level2name = N'Holidays$PrimaryKey';


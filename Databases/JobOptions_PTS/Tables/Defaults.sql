CREATE TABLE [dbo].[Defaults] (
    [Labor%Allowed]       FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [RegularHours]        FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [DoubleTimeHours]     FLOAT (53)    NULL,
    [WeeklyOvertimeHours] FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [WeeklyStartDay]      NVARCHAR (10) NULL,
    [MinimumWage]         FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [SubMinimumWage]      BIT           DEFAULT ((0)) NULL,
    [HWHRS]               FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [HWToMinWage]         FLOAT (53)    NULL,
    [BenefitsOHD]         FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [VacationHolidayOHD]  FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [SSMA_TimeStamp]      ROWVERSION    NOT NULL,
    CONSTRAINT [SSMA_CC$Defaults$WeeklyStartDay$disallow_zero_length] CHECK (len([WeeklyStartDay])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Defaults$MinimumWage]
    ON [dbo].[Defaults]([MinimumWage] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Defaults$MinimumWage1]
    ON [dbo].[Defaults]([WeeklyOvertimeHours] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Defaults$Overhead%]
    ON [dbo].[Defaults]([Labor%Allowed] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Defaults$RegularHours]
    ON [dbo].[Defaults]([RegularHours] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Defaults$RegularHours1]
    ON [dbo].[Defaults]([DoubleTimeHours] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[MinimumWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'INDEX', @level2name = N'Defaults$MinimumWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[MinimumWage1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'INDEX', @level2name = N'Defaults$MinimumWage1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[Overhead%]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'INDEX', @level2name = N'Defaults$Overhead%';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[RegularHours]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'INDEX', @level2name = N'Defaults$RegularHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[RegularHours1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'INDEX', @level2name = N'Defaults$RegularHours1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[Labor%Allowed]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'Labor%Allowed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[RegularHours]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'RegularHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[DoubleTimeHours]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'DoubleTimeHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[WeeklyOvertimeHours]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'WeeklyOvertimeHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[WeeklyStartDay]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'WeeklyStartDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[MinimumWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'MinimumWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[SubMinimumWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'SubMinimumWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[HWHRS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'HWHRS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[HWToMinWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'HWToMinWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[BenefitsOHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'BenefitsOHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Defaults].[VacationHolidayOHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Defaults', @level2type = N'COLUMN', @level2name = N'VacationHolidayOHD';


CREATE TABLE [dbo].[EmploymentDefaults] (
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
    [VacationHolidayOHD]  FLOAT (53)    DEFAULT ((0)) NOT NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[VacationHolidayOHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'VacationHolidayOHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[BenefitsOHD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'BenefitsOHD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[HWToMinWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'HWToMinWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[HWHRS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'HWHRS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[SubMinimumWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'SubMinimumWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[MinimumWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'MinimumWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[WeeklyStartDay]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'WeeklyStartDay';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[WeeklyOvertimeHours]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'WeeklyOvertimeHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[DoubleTimeHours]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'DoubleTimeHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[RegularHours]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'RegularHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults].[Labor%Allowed]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults', @level2type = N'COLUMN', @level2name = N'Labor%Allowed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmploymentDefaults]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmploymentDefaults';


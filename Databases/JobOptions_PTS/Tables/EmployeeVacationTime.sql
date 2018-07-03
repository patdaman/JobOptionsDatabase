CREATE TABLE [dbo].[EmployeeVacationTime] (
    [Emp#]           FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [Episode]        INT           NOT NULL,
    [VacationTitle]  NVARCHAR (2)  NOT NULL,
    [WeekEndingDate] DATETIME2 (0) NOT NULL,
    [VacationHours]  FLOAT (53)    DEFAULT ((0)) NULL,
    [#]              INT           DEFAULT (CONVERT([int],CONVERT([varbinary](4000),newid()))) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [EmployeeVacationTime$PrimaryKey] PRIMARY KEY CLUSTERED ([Emp#] ASC, [Episode] ASC, [VacationTitle] ASC, [WeekEndingDate] ASC),
    CONSTRAINT [SSMA_CC$EmployeeVacationTime$VacationTitle$disallow_zero_length] CHECK (len([VacationTitle])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [EmployeeVacationTime$#]
    ON [dbo].[EmployeeVacationTime]([#] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [EmployeeVacationTime$EmployeeTitle]
    ON [dbo].[EmployeeVacationTime]([Emp#] ASC, [VacationTitle] ASC, [WeekEndingDate] ASC, [VacationHours] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime', @level2type = N'INDEX', @level2name = N'EmployeeVacationTime$#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime].[EmployeeTitle]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime', @level2type = N'INDEX', @level2name = N'EmployeeVacationTime$EmployeeTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime].[VacationTitle]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime', @level2type = N'COLUMN', @level2name = N'VacationTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime].[WeekEndingDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime', @level2type = N'COLUMN', @level2name = N'WeekEndingDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime].[VacationHours]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime', @level2type = N'COLUMN', @level2name = N'VacationHours';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime].[#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime', @level2type = N'COLUMN', @level2name = N'#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeVacationTime].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeVacationTime', @level2type = N'CONSTRAINT', @level2name = N'EmployeeVacationTime$PrimaryKey';


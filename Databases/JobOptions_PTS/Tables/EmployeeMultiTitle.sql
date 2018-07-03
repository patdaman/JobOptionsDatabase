CREATE TABLE [dbo].[EmployeeMultiTitle] (
    [Emp#]           FLOAT (53)    NOT NULL,
    [Episode]        INT           NOT NULL,
    [TitleCode]      NVARCHAR (50) NOT NULL,
    [TitleWage]      FLOAT (53)    NULL,
    [LDWAT]          DATETIME2 (0) NULL,
    [StartDate]      DATETIME2 (0) NULL,
    [StopDate]       DATETIME2 (0) NULL,
    [ID]             INT           DEFAULT (CONVERT([int],CONVERT([varbinary](4000),newid()))) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [EmployeeMultiTitle$PrimaryKey] PRIMARY KEY CLUSTERED ([Emp#] ASC, [Episode] ASC, [TitleCode] ASC),
    CONSTRAINT [SSMA_CC$EmployeeMultiTitle$TitleCode$disallow_zero_length] CHECK (len([TitleCode])>(0))
);


GO
CREATE NONCLUSTERED INDEX [EmployeeMultiTitle${38FD71F2-14B7-4958-88EA-14469F8D8EB0}]
    ON [dbo].[EmployeeMultiTitle]([TitleCode] ASC);


GO
CREATE NONCLUSTERED INDEX [EmployeeMultiTitle$ID]
    ON [dbo].[EmployeeMultiTitle]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [EmployeeMultiTitle$TitleCode]
    ON [dbo].[EmployeeMultiTitle]([TitleCode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[{38FD71F2-14B7-4958-88EA-14469F8D8EB0}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'INDEX', @level2name = N'EmployeeMultiTitle${38FD71F2-14B7-4958-88EA-14469F8D8EB0}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'INDEX', @level2name = N'EmployeeMultiTitle$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[TitleCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'INDEX', @level2name = N'EmployeeMultiTitle$TitleCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[TitleCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'COLUMN', @level2name = N'TitleCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[TitleWage]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'COLUMN', @level2name = N'TitleWage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[LDWAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'COLUMN', @level2name = N'LDWAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[StartDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'COLUMN', @level2name = N'StartDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[StopDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'COLUMN', @level2name = N'StopDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiTitle].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiTitle', @level2type = N'CONSTRAINT', @level2name = N'EmployeeMultiTitle$PrimaryKey';


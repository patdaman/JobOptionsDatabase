CREATE TABLE [dbo].[EmployeeMultiDept] (
    [Emp#]           FLOAT (53)   NOT NULL,
    [Episode]        INT          NOT NULL,
    [Dept]           NVARCHAR (3) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION   NOT NULL,
    CONSTRAINT [EmployeeMultiDept$PrimaryKey] PRIMARY KEY CLUSTERED ([Emp#] ASC, [Episode] ASC, [Dept] ASC)
);


GO
CREATE NONCLUSTERED INDEX [EmployeeMultiDept$Emp#]
    ON [dbo].[EmployeeMultiDept]([Emp#] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiDept].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiDept', @level2type = N'INDEX', @level2name = N'EmployeeMultiDept$Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiDept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiDept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiDept].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiDept', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiDept].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiDept', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiDept].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiDept', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeMultiDept].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeMultiDept', @level2type = N'CONSTRAINT', @level2name = N'EmployeeMultiDept$PrimaryKey';


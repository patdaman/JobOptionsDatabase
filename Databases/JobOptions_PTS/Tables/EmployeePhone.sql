CREATE TABLE [dbo].[EmployeePhone] (
    [Emp#]           FLOAT (53)    NOT NULL,
    [Episode]        INT           NOT NULL,
    [Phone]          NVARCHAR (15) NOT NULL,
    [Phone2]         NVARCHAR (15) NULL,
    [Date]           DATETIME2 (0) NOT NULL,
    [Current]        BIT           DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [EmployeePhone$PrimaryKey] PRIMARY KEY CLUSTERED ([Emp#] ASC, [Episode] ASC, [Phone] ASC, [Date] ASC),
    CONSTRAINT [SSMA_CC$EmployeePhone$Phone$disallow_zero_length] CHECK (len([Phone])>(0)),
    CONSTRAINT [SSMA_CC$EmployeePhone$Phone2$disallow_zero_length] CHECK (len([Phone2])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeePhone]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeePhone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeePhone].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeePhone', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeePhone].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeePhone', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeePhone].[Phone]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeePhone', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeePhone].[Phone2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeePhone', @level2type = N'COLUMN', @level2name = N'Phone2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeePhone].[Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeePhone', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeePhone].[Current]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeePhone', @level2type = N'COLUMN', @level2name = N'Current';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeePhone].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeePhone', @level2type = N'CONSTRAINT', @level2name = N'EmployeePhone$PrimaryKey';


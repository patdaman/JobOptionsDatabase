CREATE TABLE [dbo].[EmployeeAddresses] (
    [Emp#]           FLOAT (53)    NOT NULL,
    [Episode]        INT           NOT NULL,
    [Date]           DATETIME2 (0) NOT NULL,
    [Address1]       NVARCHAR (31) NULL,
    [Address2]       NVARCHAR (40) NULL,
    [City]           NVARCHAR (20) NULL,
    [ST]             NVARCHAR (2)  NULL,
    [Zip]            NVARCHAR (10) NULL,
    [Current]        BIT           DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [EmployeeAddresses$PrimaryKey] PRIMARY KEY CLUSTERED ([Emp#] ASC, [Episode] ASC, [Date] ASC),
    CONSTRAINT [SSMA_CC$EmployeeAddresses$Address1$disallow_zero_length] CHECK (len([Address1])>(0)),
    CONSTRAINT [SSMA_CC$EmployeeAddresses$City$disallow_zero_length] CHECK (len([City])>(0)),
    CONSTRAINT [SSMA_CC$EmployeeAddresses$ST$disallow_zero_length] CHECK (len([ST])>(0)),
    CONSTRAINT [SSMA_CC$EmployeeAddresses$Zip$disallow_zero_length] CHECK (len([Zip])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[Address1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'COLUMN', @level2name = N'Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[Address2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'COLUMN', @level2name = N'Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[City]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[ST]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'COLUMN', @level2name = N'ST';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[Zip]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[Current]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'COLUMN', @level2name = N'Current';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeAddresses].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeAddresses', @level2type = N'CONSTRAINT', @level2name = N'EmployeeAddresses$PrimaryKey';


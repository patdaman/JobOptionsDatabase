CREATE TABLE [dbo].[EmployeeDepartment] (
    [id]          INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId] INT           NOT NULL,
    [Episode]     INT           NOT NULL,
    [Dept]        NVARCHAR (3)  NOT NULL,
    [Active]      BIT           CONSTRAINT [DF_EmployeeDepartment_Active] DEFAULT ((1)) NOT NULL,
    [CreateDate]  DATETIME2 (0) CONSTRAINT [DF_EmployeeDepartment_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]  VARCHAR (128) CONSTRAINT [DF_EmployeeDepartment_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]  DATETIME2 (0) CONSTRAINT [DF_EmployeeDepartment_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]  VARCHAR (128) CONSTRAINT [DF_EmployeeDepartment_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_EmployeeDepartment] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_EmployeeDepartment_EmployeeDepartment] FOREIGN KEY ([id]) REFERENCES [dbo].[EmployeeDepartment] ([id])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeDepartment].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeDepartment', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeDepartment].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeDepartment', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeDepartment]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeDepartment';


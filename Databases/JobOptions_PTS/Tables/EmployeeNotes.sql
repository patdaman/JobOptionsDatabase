CREATE TABLE [dbo].[EmployeeNotes] (
    [Emp#]           INT            DEFAULT ((0)) NULL,
    [Note]           NVARCHAR (MAX) NULL,
    [Date]           DATETIME2 (0)  NULL,
    [User]           NVARCHAR (15)  NULL,
    [nid]            INT            IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [EmployeeNotes$PrimaryKey] PRIMARY KEY CLUSTERED ([nid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [EmployeeNotes$nid]
    ON [dbo].[EmployeeNotes]([nid] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeNotes].[nid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeNotes', @level2type = N'INDEX', @level2name = N'EmployeeNotes$nid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeNotes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeNotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeNotes].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeNotes', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeNotes].[Note]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeNotes', @level2type = N'COLUMN', @level2name = N'Note';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeNotes].[Date]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeNotes', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeNotes].[User]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeNotes', @level2type = N'COLUMN', @level2name = N'User';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeNotes].[nid]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeNotes', @level2type = N'COLUMN', @level2name = N'nid';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[EmployeeNotes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'EmployeeNotes', @level2type = N'CONSTRAINT', @level2name = N'EmployeeNotes$PrimaryKey';


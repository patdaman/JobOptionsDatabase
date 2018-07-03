CREATE TABLE [dbo].[WorkersComp] (
    [Emp#]                FLOAT (53)    NOT NULL,
    [Episode]             INT           NOT NULL,
    [InjuryDate]          DATETIME2 (0) NOT NULL,
    [TypeOfInjury]        INT           NOT NULL,
    [DLWBeforeInjury]     DATETIME2 (0) NULL,
    [DRTWFromInjury]      DATETIME2 (0) NULL,
    [StatusWhenReturning] INT           NULL,
    [SSMA_TimeStamp]      ROWVERSION    NOT NULL,
    CONSTRAINT [WorkersComp$PrimaryKey] PRIMARY KEY CLUSTERED ([Emp#] ASC, [Episode] ASC, [InjuryDate] ASC, [TypeOfInjury] ASC),
    CONSTRAINT [WorkersComp${2C155A6A-EAE7-4BF0-943D-860FF20ACC96}] FOREIGN KEY ([StatusWhenReturning]) REFERENCES [dbo].[SpecialtyCodes] ([Code]) ON UPDATE CASCADE,
    CONSTRAINT [WorkersComp${841132AC-CCA1-4278-B2D3-50F28B5E9E05}] FOREIGN KEY ([TypeOfInjury]) REFERENCES [dbo].[SpecialtyCodes] ([Code]),
    CONSTRAINT [WorkersComp${84425975-A166-4107-86AA-BE537A2354DB}] FOREIGN KEY ([Emp#], [Episode]) REFERENCES [dbo].[Employees2] ([Emp#], [Episode]) ON UPDATE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [WorkersComp${2C155A6A-EAE7-4BF0-943D-860FF20ACC96}]
    ON [dbo].[WorkersComp]([StatusWhenReturning] ASC);


GO
CREATE NONCLUSTERED INDEX [WorkersComp${841132AC-CCA1-4278-B2D3-50F28B5E9E05}]
    ON [dbo].[WorkersComp]([TypeOfInjury] ASC);


GO
CREATE NONCLUSTERED INDEX [WorkersComp${84425975-A166-4107-86AA-BE537A2354DB}]
    ON [dbo].[WorkersComp]([Emp#] ASC, [Episode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[{2C155A6A-EAE7-4BF0-943D-860FF20ACC96}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'INDEX', @level2name = N'WorkersComp${2C155A6A-EAE7-4BF0-943D-860FF20ACC96}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[{841132AC-CCA1-4278-B2D3-50F28B5E9E05}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'INDEX', @level2name = N'WorkersComp${841132AC-CCA1-4278-B2D3-50F28B5E9E05}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[{84425975-A166-4107-86AA-BE537A2354DB}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'INDEX', @level2name = N'WorkersComp${84425975-A166-4107-86AA-BE537A2354DB}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[Emp#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'COLUMN', @level2name = N'Emp#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[Episode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'COLUMN', @level2name = N'Episode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[InjuryDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'COLUMN', @level2name = N'InjuryDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[TypeOfInjury]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'COLUMN', @level2name = N'TypeOfInjury';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[DLWBeforeInjury]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'COLUMN', @level2name = N'DLWBeforeInjury';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[DRTWFromInjury]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'COLUMN', @level2name = N'DRTWFromInjury';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[StatusWhenReturning]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'COLUMN', @level2name = N'StatusWhenReturning';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[{2C155A6A-EAE7-4BF0-943D-860FF20ACC96}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'CONSTRAINT', @level2name = N'WorkersComp${2C155A6A-EAE7-4BF0-943D-860FF20ACC96}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[{841132AC-CCA1-4278-B2D3-50F28B5E9E05}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'CONSTRAINT', @level2name = N'WorkersComp${841132AC-CCA1-4278-B2D3-50F28B5E9E05}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[{84425975-A166-4107-86AA-BE537A2354DB}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'CONSTRAINT', @level2name = N'WorkersComp${84425975-A166-4107-86AA-BE537A2354DB}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[WorkersComp].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'WorkersComp', @level2type = N'CONSTRAINT', @level2name = N'WorkersComp$PrimaryKey';


CREATE TABLE [dbo].[Name AutoCorrect Save Failures] (
    [Object Name]    NVARCHAR (255) NULL,
    [Object Type]    NVARCHAR (255) NULL,
    [Failure Reason] NVARCHAR (255) NULL,
    [Time]           DATETIME2 (0)  DEFAULT (getdate()) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Name AutoCorrect Save Failures]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Name AutoCorrect Save Failures';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Name AutoCorrect Save Failures].[Object Name]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Name AutoCorrect Save Failures', @level2type = N'COLUMN', @level2name = N'Object Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Name AutoCorrect Save Failures].[Object Type]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Name AutoCorrect Save Failures', @level2type = N'COLUMN', @level2name = N'Object Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Name AutoCorrect Save Failures].[Failure Reason]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Name AutoCorrect Save Failures', @level2type = N'COLUMN', @level2name = N'Failure Reason';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Name AutoCorrect Save Failures].[Time]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Name AutoCorrect Save Failures', @level2type = N'COLUMN', @level2name = N'Time';


CREATE TABLE [dbo].[JOIHW] (
    [DEPT]    NVARCHAR (50) NULL,
    [HW RATE] MONEY         DEFAULT ((0)) NULL,
    [ID]      INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [SSMA_CC$JOIHW$DEPT$disallow_zero_length] CHECK (len([DEPT])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [JOIHW$DEPT]
    ON [dbo].[JOIHW]([DEPT] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [JOIHW$ID]
    ON [dbo].[JOIHW]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOIHW].[DEPT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOIHW', @level2type = N'INDEX', @level2name = N'JOIHW$DEPT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOIHW].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOIHW', @level2type = N'INDEX', @level2name = N'JOIHW$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOIHW]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOIHW';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOIHW].[DEPT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOIHW', @level2type = N'COLUMN', @level2name = N'DEPT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOIHW].[HW RATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOIHW', @level2type = N'COLUMN', @level2name = N'HW RATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[JOIHW].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'JOIHW', @level2type = N'COLUMN', @level2name = N'ID';


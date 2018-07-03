CREATE TABLE [dbo].[UPR40700] (
    [WRKRCOMP]       NVARCHAR (7)  NOT NULL,
    [STATECD]        NVARCHAR (3)  NOT NULL,
    [DSCRIPTN]       NVARCHAR (31) NOT NULL,
    [WKCMPMTH]       SMALLINT      NOT NULL,
    [WKCMPAMT]       FLOAT (53)    NOT NULL,
    [WKCMPUNT]       FLOAT (53)    NOT NULL,
    [WKCMPCNT]       INT           NOT NULL,
    [WCMOTMTH]       SMALLINT      NOT NULL,
    [WCWGLIMT]       FLOAT (53)    NOT NULL,
    [NOTEINDX]       FLOAT (53)    NOT NULL,
    [DEX_ROW_ID]     INT           IDENTITY (1, 1) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [UPR40700$AK2UPR40700] PRIMARY KEY CLUSTERED ([DSCRIPTN] ASC, [WRKRCOMP] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR40700$AK3UPR40700]
    ON [dbo].[UPR40700]([STATECD] ASC, [WRKRCOMP] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [UPR40700$PKUPR40700]
    ON [dbo].[UPR40700]([WRKRCOMP] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[AK3UPR40700]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'INDEX', @level2name = N'UPR40700$AK3UPR40700';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[PKUPR40700]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'INDEX', @level2name = N'UPR40700$PKUPR40700';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[WRKRCOMP]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'WRKRCOMP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[STATECD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'STATECD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[DSCRIPTN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'DSCRIPTN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[WKCMPMTH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'WKCMPMTH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[WKCMPAMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'WKCMPAMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[WKCMPUNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'WKCMPUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[WKCMPCNT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'WKCMPCNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[WCMOTMTH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'WCMOTMTH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[WCWGLIMT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'WCWGLIMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[UPR40700].[AK2UPR40700]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'UPR40700', @level2type = N'CONSTRAINT', @level2name = N'UPR40700$AK2UPR40700';


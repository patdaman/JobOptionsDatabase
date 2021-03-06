﻿CREATE TABLE [dbo].[AF401021] (
    [REPORTID]   SMALLINT      NOT NULL,
    [HDRFTRTY]   SMALLINT      NOT NULL,
    [FLDNUM]     SMALLINT      NOT NULL,
    [FLDPOSX1]   SMALLINT      NOT NULL,
    [FLDPOSY1]   SMALLINT      NOT NULL,
    [FLDPOSX2]   SMALLINT      NOT NULL,
    [FLDPOSY2]   SMALLINT      NOT NULL,
    [FLDTYPE]    SMALLINT      NOT NULL,
    [FLDFRMAT]   SMALLINT      NOT NULL,
    [SBHSBFIN]   SMALLINT      NOT NULL,
    [FLDOPT]     SMALLINT      NOT NULL,
    [FLDOPT2]    SMALLINT      NOT NULL,
    [FLDALIGN]   SMALLINT      NOT NULL,
    [FLDFTFML]   SMALLINT      NOT NULL,
    [FLDFTSIZ]   SMALLINT      NOT NULL,
    [FLDSTYLE_1] SMALLINT      NOT NULL,
    [FLDSTYLE_2] SMALLINT      NOT NULL,
    [FLDSTYLE_3] SMALLINT      NOT NULL,
    [FLDSTYLE_4] SMALLINT      NOT NULL,
    [FLDSTYLE_5] SMALLINT      NOT NULL,
    [FLDSTYLE_6] SMALLINT      NOT NULL,
    [FLDVALUE]   NVARCHAR (81) NOT NULL,
    [FLDVALU2]   NVARCHAR (81) NOT NULL,
    [FLDPRNAM]   NVARCHAR (81) NOT NULL,
    [DEX_ROW_ID] INT           IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [AF401021$AK2AF40102] PRIMARY KEY CLUSTERED ([REPORTID] ASC, [HDRFTRTY] ASC, [SBHSBFIN] ASC, [FLDNUM] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [AF401021$PKAF40102]
    ON [dbo].[AF401021]([REPORTID] ASC, [HDRFTRTY] ASC, [FLDNUM] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[PKAF40102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'INDEX', @level2name = N'AF401021$PKAF40102';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[REPORTID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'REPORTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[HDRFTRTY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'HDRFTRTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDPOSX1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDPOSX1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDPOSY1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDPOSY1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDPOSX2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDPOSX2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDPOSY2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDPOSY2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDFRMAT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDFRMAT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[SBHSBFIN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'SBHSBFIN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDOPT]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDOPT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDOPT2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDOPT2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDALIGN]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDALIGN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDFTFML]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDFTFML';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDFTSIZ]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDFTSIZ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDSTYLE_1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDSTYLE_1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDSTYLE_2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDSTYLE_2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDSTYLE_3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDSTYLE_3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDSTYLE_4]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDSTYLE_4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDSTYLE_5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDSTYLE_5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDSTYLE_6]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDSTYLE_6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDVALUE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDVALUE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDVALU2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDVALU2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[FLDPRNAM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'FLDPRNAM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[AF401021].[AK2AF40102]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'AF401021', @level2type = N'CONSTRAINT', @level2name = N'AF401021$AK2AF40102';


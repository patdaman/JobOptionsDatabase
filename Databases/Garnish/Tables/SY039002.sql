﻿CREATE TABLE [dbo].[SY039002] (
    [NOTEINDX]       FLOAT (53)     NOT NULL,
    [DATE1]          DATETIME2 (0)  NOT NULL,
    [TIME1]          DATETIME2 (0)  NOT NULL,
    [DEX_ROW_ID]     INT            IDENTITY (1, 1) NOT NULL,
    [TXTFIELD]       NVARCHAR (MAX) NOT NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [SY039002$PKSY03900] PRIMARY KEY CLUSTERED ([NOTEINDX] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[SY039002]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SY039002';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[SY039002].[NOTEINDX]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SY039002', @level2type = N'COLUMN', @level2name = N'NOTEINDX';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[SY039002].[DATE1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SY039002', @level2type = N'COLUMN', @level2name = N'DATE1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[SY039002].[TIME1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SY039002', @level2type = N'COLUMN', @level2name = N'TIME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[SY039002].[DEX_ROW_ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SY039002', @level2type = N'COLUMN', @level2name = N'DEX_ROW_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[SY039002].[TXTFIELD]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SY039002', @level2type = N'COLUMN', @level2name = N'TXTFIELD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[SY039002].[PKSY03900]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SY039002', @level2type = N'CONSTRAINT', @level2name = N'SY039002$PKSY03900';


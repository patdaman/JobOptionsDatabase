CREATE TABLE [dbo].[PositionsOfInterest] (
    [IDRef]          INT          DEFAULT ((0)) NULL,
    [TitleCode]      NVARCHAR (3) NOT NULL,
    [Dept]           NVARCHAR (3) NULL,
    [SSMA_TimeStamp] ROWVERSION   NOT NULL,
    CONSTRAINT [SSMA_CC$PositionsOfInterest$Dept$disallow_zero_length] CHECK (len([Dept])>(0)),
    CONSTRAINT [SSMA_CC$PositionsOfInterest$TitleCode$disallow_zero_length] CHECK (len([TitleCode])>(0)),
    CONSTRAINT [PositionsOfInterest${18CC5C07-6580-471A-85CE-E36BB63631C2}] FOREIGN KEY ([TitleCode]) REFERENCES [dbo].[TitleCodes] ([TitleCode]),
    CONSTRAINT [PositionsOfInterest${FDF04FED-A992-4E41-AF5B-1CE804A83C0F}] FOREIGN KEY ([Dept]) REFERENCES [dbo].[Sites] ([Dept]),
    CONSTRAINT [PositionsOfInterest$ApplicantsPositionsOfInterest] FOREIGN KEY ([IDRef]) REFERENCES [dbo].[Applicants] ([idref])
);


GO
CREATE NONCLUSTERED INDEX [PositionsOfInterest${18CC5C07-6580-471A-85CE-E36BB63631C2}]
    ON [dbo].[PositionsOfInterest]([TitleCode] ASC);


GO
CREATE NONCLUSTERED INDEX [PositionsOfInterest${FDF04FED-A992-4E41-AF5B-1CE804A83C0F}]
    ON [dbo].[PositionsOfInterest]([Dept] ASC);


GO
CREATE NONCLUSTERED INDEX [PositionsOfInterest$ApplicantsPositionsOfInterest]
    ON [dbo].[PositionsOfInterest]([IDRef] ASC);


GO
CREATE NONCLUSTERED INDEX [PositionsOfInterest$Dept]
    ON [dbo].[PositionsOfInterest]([Dept] ASC);


GO
CREATE NONCLUSTERED INDEX [PositionsOfInterest$ID]
    ON [dbo].[PositionsOfInterest]([IDRef] ASC);


GO
CREATE NONCLUSTERED INDEX [PositionsOfInterest$TitleCode]
    ON [dbo].[PositionsOfInterest]([TitleCode] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [PositionsOfInterest$TitleDept]
    ON [dbo].[PositionsOfInterest]([TitleCode] ASC, [Dept] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[{18CC5C07-6580-471A-85CE-E36BB63631C2}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'INDEX', @level2name = N'PositionsOfInterest${18CC5C07-6580-471A-85CE-E36BB63631C2}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[{FDF04FED-A992-4E41-AF5B-1CE804A83C0F}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'INDEX', @level2name = N'PositionsOfInterest${FDF04FED-A992-4E41-AF5B-1CE804A83C0F}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[ApplicantsPositionsOfInterest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'INDEX', @level2name = N'PositionsOfInterest$ApplicantsPositionsOfInterest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'INDEX', @level2name = N'PositionsOfInterest$Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'INDEX', @level2name = N'PositionsOfInterest$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[TitleCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'INDEX', @level2name = N'PositionsOfInterest$TitleCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[TitleDept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'INDEX', @level2name = N'PositionsOfInterest$TitleDept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[IDRef]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'COLUMN', @level2name = N'IDRef';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[TitleCode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'COLUMN', @level2name = N'TitleCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[Dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'COLUMN', @level2name = N'Dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[{18CC5C07-6580-471A-85CE-E36BB63631C2}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'CONSTRAINT', @level2name = N'PositionsOfInterest${18CC5C07-6580-471A-85CE-E36BB63631C2}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[{FDF04FED-A992-4E41-AF5B-1CE804A83C0F}]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'CONSTRAINT', @level2name = N'PositionsOfInterest${FDF04FED-A992-4E41-AF5B-1CE804A83C0F}';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[PositionsOfInterest].[ApplicantsPositionsOfInterest]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'PositionsOfInterest', @level2type = N'CONSTRAINT', @level2name = N'PositionsOfInterest$ApplicantsPositionsOfInterest';


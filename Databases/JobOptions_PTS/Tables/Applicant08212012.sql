CREATE TABLE [dbo].[Applicant08212012] (
    [idref]              INT              IDENTITY (1, 1) NOT NULL,
    [IDRef3]             NVARCHAR (50)    NULL,
    [FirstName]          NVARCHAR (20)    NULL,
    [Disabled]           BIT              DEFAULT ((0)) NULL,
    [LastName]           NVARCHAR (20)    NULL,
    [DateOfContact]      DATETIME2 (0)    NULL,
    [ContactType]        INT              NULL,
    [ReferringAgency]    NVARCHAR (50)    NULL,
    [DFJDocRecd]         DATETIME2 (0)    NULL,
    [DFJDocRevd]         DATETIME2 (0)    NULL,
    [ApptDate]           DATETIME2 (0)    NULL,
    [Gender]             NVARCHAR (1)     NULL,
    [Ethnicity]          NVARCHAR (50)    NULL,
    [Outcome]            INT              NULL,
    [DET]                NVARCHAR (50)    NULL,
    [ID]                 UNIQUEIDENTIFIER DEFAULT (newid()) NULL,
    [Resume]             VARBINARY (MAX)  NULL,
    [LinkingID]          NVARCHAR (50)    NULL,
    [Notes]              NVARCHAR (250)   NULL,
    [TitleSelect01]      NVARCHAR (50)    NULL,
    [TitleSelect02]      NVARCHAR (50)    NULL,
    [DeptSelect01]       NVARCHAR (50)    NULL,
    [Deptselect02]       NVARCHAR (50)    NULL,
    [Deptselect03]       NVARCHAR (50)    NULL,
    [Deptselect04]       NVARCHAR (50)    NULL,
    [ReContact01]        NVARCHAR (200)   NULL,
    [ReContact02]        NVARCHAR (200)   NULL,
    [Telephone]          NVARCHAR (50)    NULL,
    [SocialSecurity #]   NVARCHAR (50)    NULL,
    [Birthdate]          DATETIME2 (0)    NULL,
    [Address]            NVARCHAR (50)    NULL,
    [City]               NVARCHAR (50)    NULL,
    [Zipcode]            NVARCHAR (50)    NULL,
    [EmergenceyContact]  NVARCHAR (50)    NULL,
    [EmergenceyContact#] NVARCHAR (50)    NULL,
    [Interviewed]        BIT              DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]     ROWVERSION       NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [Applicant08212012$ID]
    ON [dbo].[Applicant08212012]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicant08212012$idref]
    ON [dbo].[Applicant08212012]([idref] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicant08212012$IDRef3]
    ON [dbo].[Applicant08212012]([IDRef3] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicant08212012$LinkingID]
    ON [dbo].[Applicant08212012]([LinkingID] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicant08212012$Zipcode]
    ON [dbo].[Applicant08212012]([Zipcode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'INDEX', @level2name = N'Applicant08212012$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[idref]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'INDEX', @level2name = N'Applicant08212012$idref';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[IDRef3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'INDEX', @level2name = N'Applicant08212012$IDRef3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[LinkingID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'INDEX', @level2name = N'Applicant08212012$LinkingID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Zipcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'INDEX', @level2name = N'Applicant08212012$Zipcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[idref]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'idref';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[IDRef3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'IDRef3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[FirstName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Disabled]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Disabled';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[LastName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[DateOfContact]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'DateOfContact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[ContactType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'ContactType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[ReferringAgency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'ReferringAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[DFJDocRecd]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'DFJDocRecd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[DFJDocRevd]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'DFJDocRevd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[ApptDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'ApptDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Gender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Ethnicity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Ethnicity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Outcome]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Outcome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[DET]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'DET';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Resume]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Resume';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[LinkingID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'LinkingID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Notes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[TitleSelect01]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'TitleSelect01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[TitleSelect02]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'TitleSelect02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[DeptSelect01]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'DeptSelect01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Deptselect02]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Deptselect02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Deptselect03]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Deptselect03';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Deptselect04]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Deptselect04';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[ReContact01]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'ReContact01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[ReContact02]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'ReContact02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Telephone]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Telephone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[SocialSecurity #]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'SocialSecurity #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Birthdate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Birthdate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Address]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[City]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Zipcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Zipcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[EmergenceyContact]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'EmergenceyContact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[EmergenceyContact#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'EmergenceyContact#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant08212012].[Interviewed]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant08212012', @level2type = N'COLUMN', @level2name = N'Interviewed';


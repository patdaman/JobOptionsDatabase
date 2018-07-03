CREATE TABLE [dbo].[Applicant01] (
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
    [Notes]              NVARCHAR (MAX)   NULL,
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
    [ReferralAgency]     NVARCHAR (255)   NULL,
    [SSMA_TimeStamp]     ROWVERSION       NOT NULL,
    CONSTRAINT [Applicant01$PrimaryKey] PRIMARY KEY CLUSTERED ([idref] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Applicant01$ID]
    ON [dbo].[Applicant01]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicant01$idref]
    ON [dbo].[Applicant01]([idref] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicant01$IDRef3]
    ON [dbo].[Applicant01]([IDRef3] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicant01$LinkingID]
    ON [dbo].[Applicant01]([LinkingID] ASC);


GO
CREATE NONCLUSTERED INDEX [Applicant01$Zipcode]
    ON [dbo].[Applicant01]([Zipcode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'INDEX', @level2name = N'Applicant01$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[idref]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'INDEX', @level2name = N'Applicant01$idref';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[IDRef3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'INDEX', @level2name = N'Applicant01$IDRef3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[LinkingID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'INDEX', @level2name = N'Applicant01$LinkingID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Zipcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'INDEX', @level2name = N'Applicant01$Zipcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[idref]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'idref';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[IDRef3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'IDRef3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[FirstName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'FirstName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Disabled]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Disabled';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[LastName]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'LastName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[DateOfContact]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'DateOfContact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[ContactType]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'ContactType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[ReferringAgency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'ReferringAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[DFJDocRecd]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'DFJDocRecd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[DFJDocRevd]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'DFJDocRevd';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[ApptDate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'ApptDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Gender]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Gender';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Ethnicity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Ethnicity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Outcome]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Outcome';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[DET]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'DET';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[ID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Resume]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Resume';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[LinkingID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'LinkingID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Notes]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[TitleSelect01]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'TitleSelect01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[TitleSelect02]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'TitleSelect02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[DeptSelect01]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'DeptSelect01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Deptselect02]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Deptselect02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Deptselect03]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Deptselect03';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Deptselect04]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Deptselect04';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[ReContact01]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'ReContact01';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[ReContact02]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'ReContact02';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Telephone]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Telephone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[SocialSecurity #]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'SocialSecurity #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Birthdate]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Birthdate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Address]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[City]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Zipcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Zipcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[EmergenceyContact]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'EmergenceyContact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[EmergenceyContact#]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'EmergenceyContact#';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[Interviewed]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'Interviewed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[ReferralAgency]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'COLUMN', @level2name = N'ReferralAgency';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[Applicant01].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Applicant01', @level2type = N'CONSTRAINT', @level2name = N'Applicant01$PrimaryKey';


CREATE TABLE [dbo].[XFERempGPS] (
    [EMPLOYID]       NVARCHAR (255) NULL,
    [Lastname]       NVARCHAR (20)  NULL,
    [FRSTNAME]       NVARCHAR (20)  NULL,
    [MIDLNAME]       NVARCHAR (1)   NULL,
    [SOCSCNUM]       NVARCHAR (50)  NULL,
    [BRTHDATE]       DATETIME2 (0)  NULL,
    [GENDER]         FLOAT (53)     NULL,
    [STRTDATE]       DATETIME2 (0)  NULL,
    [BIRTHDAY]       DATETIME2 (0)  NULL,
    [BIRTHMONTH]     INT            DEFAULT ((0)) NULL,
    [EMPLOYMENTTYPE] INT            NULL,
    [MARITALSTATUS]  INT            NULL,
    [ADRSCODE]       NVARCHAR (50)  NULL,
    [Address1]       NVARCHAR (31)  NULL,
    [Address2]       NVARCHAR (40)  NULL,
    [City]           NVARCHAR (20)  NULL,
    [STATE]          NVARCHAR (2)   NULL,
    [ZIPCODE]        NVARCHAR (10)  NULL,
    [Phone]          NVARCHAR (50)  NULL,
    [Phone2]         NVARCHAR (50)  NULL,
    [Note1]          NVARCHAR (MAX) NULL,
    [Select]         BIT            DEFAULT ((0)) NULL,
    [dept]           NVARCHAR (3)   NULL,
    [jbcode]         NVARCHAR (3)   NULL,
    [Ethnicity]      NVARCHAR (50)  NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [XFERempGPS$jbcode]
    ON [dbo].[XFERempGPS]([jbcode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[jbcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'INDEX', @level2name = N'XFERempGPS$jbcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[EMPLOYID]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'EMPLOYID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[Lastname]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[FRSTNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'FRSTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[MIDLNAME]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'MIDLNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[SOCSCNUM]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'SOCSCNUM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[BRTHDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'BRTHDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[GENDER]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'GENDER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[STRTDATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'STRTDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[BIRTHDAY]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'BIRTHDAY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[BIRTHMONTH]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'BIRTHMONTH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[EMPLOYMENTTYPE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'EMPLOYMENTTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[MARITALSTATUS]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'MARITALSTATUS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[ADRSCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'ADRSCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[Address1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[Address2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[City]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[STATE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'STATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[ZIPCODE]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'ZIPCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[Phone]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[Phone2]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'Phone2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[Note1]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'Note1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[Select]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'Select';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[dept]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'dept';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[jbcode]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'jbcode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'PTSData.[XFERempGPS].[Ethnicity]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'XFERempGPS', @level2type = N'COLUMN', @level2name = N'Ethnicity';


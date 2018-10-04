CREATE TABLE [dbo].[ApplicantDisability] (
    [id]             INT            IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]    INT            NOT NULL,
    [DisabilityType] VARCHAR (128)  NOT NULL,
    [DisabilityCode] VARCHAR (1024) NULL,
    [Authorized]     BIT            CONSTRAINT [DF_ApplicantDisability_Authorized] DEFAULT ((0)) NULL,
    [Note]           VARCHAR (MAX)  NULL,
    [CreateDate]     DATETIME2 (0)  CONSTRAINT [DF_ApplicantDisability_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]     VARCHAR (128)  CONSTRAINT [DF_ApplicantDisability_CreateUser] DEFAULT (suser_name()) NOT NULL,
    [ModifyDate]     DATETIME2 (0)  CONSTRAINT [DF_ApplicantDisability_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]     VARCHAR (128)  CONSTRAINT [DF_ApplicantDisability_ModifyUser] DEFAULT (suser_name()) NOT NULL,
    CONSTRAINT [PK_ApplicantDisability] PRIMARY KEY CLUSTERED ([id] ASC)
);


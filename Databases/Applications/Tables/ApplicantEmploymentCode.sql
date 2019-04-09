CREATE TABLE [dbo].[ApplicantEmploymentCode] (
    [id]                    INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]           INT           NOT NULL,
    [ApplicantEmploymentId] INT           NULL,
    [SpecialtyCode]         INT           NOT NULL,
    [CreateDate]            DATETIME2 (0) CONSTRAINT [DF_ApplicantEmploymentCode_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]            VARCHAR (128) CONSTRAINT [DF_ApplicantEmploymentCode_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]            DATETIME2 (0) CONSTRAINT [DF_ApplicantEmploymentCode_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]            VARCHAR (128) CONSTRAINT [DF_ApplicantEmploymentCode_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_ApplicantEmploymentCode] PRIMARY KEY CLUSTERED ([id] ASC)
);


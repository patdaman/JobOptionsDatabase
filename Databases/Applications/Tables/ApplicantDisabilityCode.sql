CREATE TABLE [dbo].[ApplicantDisabilityCode] (
    [id]             INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]    INT           NOT NULL,
    [DisabilityType] VARCHAR (128) NOT NULL,
    [SpecialtyCode]  INT           NOT NULL,
    [Note]           VARCHAR (MAX) NULL,
    [CreateDate]     DATETIME2 (0) CONSTRAINT [DF_ApplicantDisabilityCode_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]     VARCHAR (128) CONSTRAINT [DF_ApplicantDisabilityCode_CreateUser] DEFAULT (suser_name()) NOT NULL,
    [ModifyDate]     DATETIME2 (0) CONSTRAINT [DF_ApplicantDisabilityCode_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]     VARCHAR (128) CONSTRAINT [DF_ApplicantDisabilityCode_ModifyUser] DEFAULT (suser_name()) NOT NULL,
    CONSTRAINT [PK_ApplicantDisabilityCode] PRIMARY KEY CLUSTERED ([id] ASC)
);




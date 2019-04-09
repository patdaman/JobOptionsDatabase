CREATE TABLE [dbo].[ApplicantEmployment] (
    [id]             INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]    INT           NOT NULL,
    [EmploymentType] VARCHAR (128) NOT NULL,
    [Approved]       BIT           NULL,
    [Note]           VARCHAR (MAX) NULL,
    [CreateDate]     DATETIME2 (0) CONSTRAINT [DF_ApplicantEmployment_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]     VARCHAR (128) CONSTRAINT [DF_ApplicantEmployment_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]     DATETIME2 (0) CONSTRAINT [DF_ApplicantEmployment_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]     VARCHAR (128) CONSTRAINT [DF_ApplicantEmployment_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_ApplicantEmployment] PRIMARY KEY CLUSTERED ([id] ASC)
);


CREATE TABLE [dbo].[Address] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NOT NULL,
    [ApplicationId] INT           NULL,
    [AddressType]   VARCHAR (50)  NOT NULL,
    [OwnerType]     VARCHAR (50)  CONSTRAINT [DF_Address_OwnerType] DEFAULT ('Applicant') NOT NULL,
    [Address1]      VARCHAR (256) NOT NULL,
    [Address2]      VARCHAR (256) NULL,
    [Address3]      VARCHAR (256) NULL,
    [City]          VARCHAR (128) NOT NULL,
    [State]         VARCHAR (50)  NOT NULL,
    [PostalCode]    VARCHAR (50)  NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_Address_CreateDate] DEFAULT (getdate()) NOT NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_Address_CreateUser] DEFAULT (suser_sname()) NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_Address_ModifyDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_Address_ModifyUser] DEFAULT (suser_sname()) NOT NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Address_AddressTypes] FOREIGN KEY ([AddressType]) REFERENCES [dbo].[AddressTypes] ([Name]),
    CONSTRAINT [FK_Address_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]),
    CONSTRAINT [FK_Address_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT [FK_Address_OwnerTypes] FOREIGN KEY ([OwnerType]) REFERENCES [dbo].[OwnerTypes] ([Name])
);






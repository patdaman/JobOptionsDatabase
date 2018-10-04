CREATE TABLE [dbo].[ApplicantStatus] (
    [id]            INT           IDENTITY (10000, 1) NOT NULL,
    [ApplicantId]   INT           NOT NULL,
    [ApplicationId] INT           NULL,
    [Status]        VARCHAR (128) NOT NULL,
    [Note]          VARCHAR (MAX) NULL,
    [EndDate]       DATETIME2 (0) NULL,
    [CreateUser]    VARCHAR (128) CONSTRAINT [DF_ApplicantStatus_CreateUser] DEFAULT ('suser_name') NOT NULL,
    [CreateDate]    DATETIME2 (0) CONSTRAINT [DF_ApplicantStatus_CreateDate] DEFAULT (getdate()) NOT NULL,
    [ModifyUser]    VARCHAR (128) CONSTRAINT [DF_ApplicantStatus_ModifyUser] DEFAULT ('suser_name') NOT NULL,
    [ModifyDate]    DATETIME2 (0) CONSTRAINT [DF_ApplicantStatus_ModifyDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ApplicantStatus] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_ApplicantStatus_Applicant] FOREIGN KEY ([ApplicantId]) REFERENCES [dbo].[Applicant] ([id]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [FK_ApplicantStatus_Application] FOREIGN KEY ([ApplicationId]) REFERENCES [dbo].[Application] ([id]) ON DELETE SET NULL ON UPDATE CASCADE
);




GO
-- =============================================
-- Author:		Patrick de los Reyes
-- Create date: 2018_09_28
-- Description:	Update the EndDate column when an applicant get a new (updated) status
-- =============================================
CREATE TRIGGER dbo.tr_UpdateStatusEnd 
   ON  dbo.ApplicantStatus 
   AFTER INSERT,DELETE
AS 
BEGIN --> 1
	SET NOCOUNT ON;
	DECLARE @EndDate DATETIME2(0),
		@ApplicantId INT
	IF (SELECT 1 FROM inserted) IS NOT NULL
	BEGIN --> 2
		SET @EndDate = GETDATE()
		SET @ApplicantId = (SELECT ApplicantId FROM inserted)
	END --< 2
	ELSE
	BEGIN --> 2
		SET @EndDate = NULL
		SET @ApplicantId = (SELECT ApplicantId FROM deleted)
	END --< 2
	; WITH cte AS (
		SELECT TOP 1 AppStatus.EndDate
		FROM [dbo].[ApplicantStatus] AS AppStatus
		WHERE AppStatus.ApplicantId = @ApplicantId
		ORDER BY AppStatus.CreateDate DESC
	)
	UPDATE cte
	SET EndDate = @EndDate
	;
END --< 1
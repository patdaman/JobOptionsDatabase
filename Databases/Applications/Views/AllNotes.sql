CREATE VIEW [dbo].[AllNotes] AS
SELECT ROW_NUMBER() OVER (ORDER BY [CreateDate] DESC) AS seq, *
FROM (
	SELECT DISTINCT
	'vi_AllNotes'									AS [Object]
		, [Applicant].[id]									AS ApplicantId
		, COALESCE(Phone.TableName, Location.TableName, Position.TableName, Status.TableName, Disability.TableName, Address.TableName) AS TableName
		, COALESCE(Phone.id, [Location].id, Position.id, [Status].id, Disability.id, [Address].id) AS id
		, COALESCE(Phone.Note, [Location].Note, [Position].Note, [Status].Note, [Disability].Note, [Address].Note) AS Note
		, COALESCE(Phone.CreateDate, Location.CreateDate, Position.CreateDate, [Status].CreateDate, Disability.CreateDate, Address.CreateDate) AS CreateDate
		, COALESCE(Phone.CreateUser, Location.CreateUser, Position.CreateUser, Status.CreateUser, Disability.CreateUser, Address.CreateUser) AS CreateUser
FROM [dbo].[Applicant] [Applicant]
	OUTER APPLY (SELECT id, 'Phone' AS TableName, Note, CreateDate, CreateUser
					 FROM [dbo].[Phone] Ph
					 WHERE [Applicant].id = [Ph].ApplicantId AND OwnerType = 'Applicant'
						AND COALESCE([Ph].Note, '') <> ''
				) [Phone] 
	OUTER APPLY (SELECT id, 'Address' AS TableName, Note, CreateDate, CreateUser
					 FROM [dbo].[Address] Ad
					 WHERE [Applicant].id = [Ad].ApplicantId
						AND COALESCE([Ad].Note, '') <> ''
				) [Address] 
	OUTER APPLY (SELECT id, 'ApplicantLocation' AS TableName, Note, CreateDate, CreateUser
					 FROM [dbo].[ApplicantLocation] AL
					 WHERE [Applicant].id = AL.ApplicantId
						AND COALESCE([AL].Note, '') <> ''
					 ) [Location]
	OUTER APPLY (SELECT id, 'ApplicantPosition' AS TableName, Note, CreateDate, CreateUser
					 FROM [dbo].[ApplicantPosition] AP
					 WHERE [Applicant].id = AP.ApplicantId
						AND COALESCE([AP].Note, '') <> ''
					 ) [Position]
	OUTER APPLY (SELECT id, 'ApplicantStatus' AS TableName, Note, CreateDate, CreateUser
					 FROM [dbo].[ApplicantStatus] St
					 WHERE [Applicant].id = St.ApplicantId 
						AND COALESCE([St].Note, '') <> ''
					 ) [Status]
	OUTER APPLY (SELECT id, 'Disability' AS TableName, Note, CreateDate, CreateUser
					FROM [dbo].[ApplicantDisability] Ad
					WHERE [applicant].id = Ad.ApplicantId
						AND COALESCE([Ad].Note, '') <> ''
					) [Disability]
) AS DistinctQuery
WHERE id IS NOT NULL
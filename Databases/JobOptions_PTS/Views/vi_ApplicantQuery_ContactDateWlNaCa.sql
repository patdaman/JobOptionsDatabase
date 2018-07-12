
CREATE VIEW [vi_ApplicantQuery_ContactDateWlNaCa] AS
SELECT Applicant01.idref
	, Applicant01.DateOfContact
	, Applicant01.ContactType
	, Applicant01.LastName
	, Applicant01.FirstName
	, Applicant01.DeptSelect01
	, Applicant01.TitleSelect01
	, Applicant01.Gender
	, Applicant01.Ethnicity
	, Applicant01.Disabled
	, Applicant01.DFJDocRecd
	, Applicant01.ApptDate
	, Applicant01.Outcome
	, SpecialtyCodes_1.Description
	, Applicant01.ReContact01
	, Applicant01.ReContact02
FROM Applicant01 
	LEFT JOIN SpecialtyCodes ON Applicant01.ContactType = SpecialtyCodes.Code
	LEFT JOIN SpecialtyCodes AS SpecialtyCodes_1 ON Applicant01.Outcome = SpecialtyCodes_1.Code
WHERE 1=1
	-- AND Applicant01.DateOfContact Between [beginning date] And [ending date]
	AND Applicant01.Outcome IN (701, 705, 707)

CREATE VIEW vi_ApplicantQuery_WaitingList AS
SELECT Applicant01.IDRef3
	, Applicant01.Interviewed
	, Applicant01.DFJDocRecd
	, Applicant01.DateOfContact
	, Applicant01.DFJDocRevd
	, Applicant01.ApptDate
	, Applicant01.LastName
	, Applicant01.FirstName
	, Applicant01.DeptSelect01
	, Applicant01.TitleSelect01
	, Applicant01.Gender
	, Applicant01.Ethnicity
	, Applicant01.Disabled
	, Applicant01.Outcome
	, SpecialtyCodes_1.Description
	, Applicant01.Notes
FROM Applicant01 
	LEFT JOIN SpecialtyCodes ON Applicant01.ContactType = SpecialtyCodes.Code
	LEFT JOIN SpecialtyCodes AS SpecialtyCodes_1 ON Applicant01.Outcome = SpecialtyCodes_1.Code
WHERE 1=1
	-- AND Applicant01.DFJDocRecd Between [Enter Begin Date] And [Enter End Date]
	AND Applicant01.Outcome=701
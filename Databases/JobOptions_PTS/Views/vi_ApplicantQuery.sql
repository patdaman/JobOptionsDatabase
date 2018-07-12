
CREATE VIEW vi_ApplicantQuery
AS
SELECT Applicant01.DeptSelect01
	, Applicant01.Deptselect02
	, Applicant01.Deptselect03
	, Applicant01.Deptselect04
	, Applicant01.ApptDate
	, Applicant01.idref
	, Applicant01.FirstName
	, Applicant01.LastName
	, Applicant01.DateOfContact
	, Applicant01.Disabled
	, SpecialtyCodes.Description
FROM Applicant01 
	INNER JOIN SpecialtyCodes ON Applicant01.Outcome = SpecialtyCodes.Code
WHERE Applicant01.Disabled = 1 
	AND (Applicant01.Outcome=701 
		OR Applicant01.Outcome=703)
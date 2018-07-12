
CREATE VIEW vi_NewHiresDisabilities AS
SELECT Sites.SiteName
	, Employees.Dept
	, Employees.[Emp#]
	, Employees.Last
	, Employees.First
	, Employees.Hire_Date
	, SpecialtyCodes.Description
FROM Employees 
	INNER JOIN (SpecialtyCodes 
					INNER JOIN Disabilities ON SpecialtyCodes.Code = Disabilities.DisabilityCode) 
		ON Employees.Episode = Disabilities.Episode AND Employees.[Emp#] = Disabilities.[Emp#] 
	INNER JOIN Sites ON Employees.Dept = Sites.Dept
WHERE 1=1
	-- AND Employees.Hire_Date Between [Input Beginning Date] And [Input Ending Date]
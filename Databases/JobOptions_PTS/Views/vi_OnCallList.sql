
CREATE VIEW vi_OnCallList AS
SELECT Employees.Dept
	, Employees.[Last]
	, Employees.[First]
	, Employees.Hire_Date
	, EmployeeMultiTitle.TitleCode
	, Employees.DIS
	, Employees.DisForJob
	, Employees.SalariedExempt
	, Employees.[Emp#]
	, TitleCodes.[Desc]
	, EmployeeMultiTitle.TitleWage
	, EmployeeMultiTitle.LDWAT
	, EmployeeMultiTitle.StopDate
FROM TitleCodes 
	INNER JOIN (Employees 
					INNER JOIN EmployeeMultiTitle ON Employees.[Emp#] = EmployeeMultiTitle.[Emp#] AND Employees.Episode = EmployeeMultiTitle.Episode) 
		ON TitleCodes.TitleCode = EmployeeMultiTitle.TitleCode
WHERE EmployeeMultiTitle.TitleCode = 'OC' AND Employees.Status <> 't'
--ORDER BY Employees.Dept
--	, Employees.Last
--	, Employees.First
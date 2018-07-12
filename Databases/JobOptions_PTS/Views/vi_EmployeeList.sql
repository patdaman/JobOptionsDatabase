
CREATE VIEW vi_EmployeeList AS
SELECT Employees.Status
	, Sites.SiteName
	, Sites.Dept
	, Employees.[Emp#]
	, Employees.Sex
	, Employees.Ethnicity
	, Employees.Last
	, Employees.First
	, Employees.SS
	, Employees.Job_Title
	, Employees.SalariedExempt
	, Employees.BaseWage
	, Employees.Hire_Date
	, Employees.LastDayWorked
	, Employees.Birthdate
	, Employees.Vets_100
	, Employees.DIS
	, Employees.DisForJob
FROM Sites 
	INNER JOIN Employees ON Sites.Dept = Employees.Dept
WHERE Employees.Status <> 'T' 
	-- AND Sites.Dept = [Input Site Code]
--ORDER BY Sites.SiteName
--	, Employees.Last
--	, Employees.First;
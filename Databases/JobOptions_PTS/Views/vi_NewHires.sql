
CREATE VIEW vi_NewHires AS
SELECT Employees.Status
	, Sites.SiteName
	, Employees.Dept
	, Employees.[Emp#]
	, Employees.Last
	, Employees.First
	, Employees.DIS
	, Employees.DisForJob
	, Employees.Hire_Date
	, Employees.Term_Date
	, Employees.Job_Title
	, Employees.SalariedExempt
	, Employees.Ethnicity
	, Employees.Sex
FROM Sites 
	INNER JOIN Employees ON Sites.Dept = Employees.Dept
WHERE 1=1
	-- AND Employees.Hire_Date Between [Beginning Date] And [Ending Date]
--ORDER BY Sites.SiteName
--	, Employees.Dept
--	, Employees.Last
--	, Employees.First;
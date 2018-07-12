
CREATE VIEW vi_NewHiresUniformList AS
SELECT Employees.Status
	, Sites.SiteName
	, Employees.Dept
	, Employees.[Emp#]
	, Employees.Last
	, Employees.First
	, Employees.DIS
	, Employees.DisForJob
	, Employees.Hire_Date
FROM Sites 
	INNER JOIN Employees ON Sites.Dept = Employees.Dept
WHERE Employees.Dept IN ('VAM', 'NMC', 'hfb', 'hf1', 'hf2', 'hf3') 
	-- AND Employees.Hire_Date Between [Beginning Date] And [Ending Date]
--ORDER BY Sites.SiteName
--	, Employees.Dept
--	, Employees.Last
--	, Employees.First;
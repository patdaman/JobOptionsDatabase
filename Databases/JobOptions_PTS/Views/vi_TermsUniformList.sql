
CREATE VIEW vi_TermsUniformList AS
SELECT --DISTINCTROW 
	DISTINCT
	Sites.SiteName
	, Employees.Dept
	, Employees.[Emp#]
	, Employees.[Last]
	, Employees.[First]
	, Employees.DIS
	, Employees.DisForJob
	, Employees.Term_Date
	, Employees.Term_Reason
	, Employees.LastDayWorked
FROM Sites 
	INNER JOIN Employees ON Sites.Dept=Employees.Dept
WHERE Employees.Dept IN ('nmc', 'vam') 
--	AND ((Employees.Term_Date) Between [Beginning Date] And [Ending Date]))
--ORDER BY Sites.SiteName
--	, Employees.Dept
--	, Employees.[Emp#]
--	, Employees.Last
--	, Employees.First
--	, Employees.Term_Date;

CREATE VIEW vi_TermsRosies AS
SELECT Employees.Dept
	, Employees.[First]
	, Employees.[Last]
	, Employees.SS
	, Employees.Term_Date
	, Employees.Term_Reason
	, Employees.LastDayWorked
FROM Employees
WHERE 1=1
	-- AND Employees.Term_Date Between [Enter Beginning Date] And [Enter End Date]
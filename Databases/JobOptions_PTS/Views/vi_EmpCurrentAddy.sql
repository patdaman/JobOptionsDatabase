
CREATE VIEW vi_EmpCurrentAddy AS
SELECT EmployeeAddresses.[Emp#]
	, EmployeeAddresses.Episode
	, Max(EmployeeAddresses.Date) AS MaxOfDate
FROM EmployeeAddresses
GROUP BY EmployeeAddresses.[Emp#]
	, EmployeeAddresses.Episode;
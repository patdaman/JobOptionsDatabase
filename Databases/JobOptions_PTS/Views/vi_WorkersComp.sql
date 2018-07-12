
CREATE VIEW vi_WorkersComp AS
SELECT Sites.SiteName
	, Employees.Last
	, Employees.First
	, Employees.Job_Title
	, WorkersComp.InjuryDate
	, WorkersComp.TypeOfInjury
	, SpecialtyCodes.Description
	, WorkersComp.StatusWhenReturning
FROM SpecialtyCodes 
	INNER JOIN (Sites 
				INNER JOIN (Employees 
							INNER JOIN WorkersComp ON 
									Employees.[Emp#] = WorkersComp.[Emp#] 
										AND Employees.Episode = WorkersComp.Episode 
										AND Employees.[Emp#] = WorkersComp.[Emp#] 
										AND Employees.Episode = WorkersComp.Episode) 
					ON Sites.Dept = Employees.Dept) 
		ON SpecialtyCodes.Code = WorkersComp.TypeOfInjury
WHERE 1=1
--	AND WorkersComp.InjuryDate Between [Starting Date] And [Ending Date]
--ORDER BY Sites.SiteName
--	, Employees.Last;
﻿CREATE VIEW dbo.[Query3]
AS 
   /*Generated by SQL Server Migration Assistant for Access version 7.8.0.*/
   SELECT 
      [32nd].[New WDR] AS [32nd_New WDR], 
      [32nd].[Dept], 
      [32nd].[Job_Title], 
      [Dept] + [Job_Title] AS Expr1, 
      [32nd].[Emp#], 
      [32nd].[New WDR] AS [32nd_New WDR$2]
   FROM [32nd]
GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Query3]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'Query3';


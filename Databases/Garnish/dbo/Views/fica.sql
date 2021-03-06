﻿CREATE VIEW dbo.[fica]
AS 
   /*Generated by SQL Server Migration Assistant for Access version 7.8.0.*/
   SELECT 
      Sum([UPR30100].[FICAMWPR]) AS SumOfFICAMWPR, 
      Sum([UPR30100].[FCASWPR]) AS SumOfFCASWPR, 
      [UPR30100].[CHEKDATE], 
      [UPR30100].[POSTEDDT], 
      Sum(2 * ([FCASWPR] + [ficamwpr])) AS Expr1, 
      [UPR30100].[AUCTRLCD]
   FROM [UPR30100]
   GROUP BY [UPR30100].[CHEKDATE], [UPR30100].[POSTEDDT], [UPR30100].[AUCTRLCD]
   HAVING ((([UPR30100].[POSTEDDT]) > CONVERT(DATETIME, '2006-06-30T00:00:00.000', 126) AND ([UPR30100].[POSTEDDT]) < CONVERT(DATETIME, '2006-08-01T00:00:00.000', 126)))
GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[fica]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'fica';


﻿CREATE VIEW dbo.[Query5]
AS 
   /*Generated by SQL Server Migration Assistant for Access version 7.8.0.*/
   SELECT [upr00100].[EMPLOYID], [upr00100].[INACTIVE], [UPR00500].[DEDUCTON], [UPR00500].[DEDCAMNT_1]
   FROM 
      [UPR00500] 
         INNER JOIN [upr00100] 
         ON [UPR00500].[EMPLOYID] = [upr00100].[EMPLOYID]
   WHERE ((([upr00100].[INACTIVE]) = 0) AND (([UPR00500].[DEDUCTON]) = 'OTHNMC'))
GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Garnish master.[Query5]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'Query5';


﻿/*
*   SSMA warning messages:
*   A2SS0030: View 'RepetetiveDistributions Query' has a name that might cause problems for the Access application to function correctly against SQL Server.
*/

CREATE VIEW dbo.[RepetetiveDistributions Query]
AS 
   /*Generated by SQL Server Migration Assistant for Access version 7.8.0.*/
   SELECT 
      [RepetetiveDistributions].[ID], 
      [RepetetiveDistributions].[Site], 
      [RepetetiveDistributions].[DISTRIBUTIONS ACCOUNT], 
      [RepetetiveDistributions].[DISTRIBUTIONS TYPE], 
      [RepetetiveDistributions].[DEBIT AMOUNT], 
      [RepetetiveDistributions].[CREDIT AMOUNT], 
      [RepetetiveDistributions].[reid]
   FROM [RepetetiveDistributions]
GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[RepetetiveDistributions Query]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'RepetetiveDistributions Query';


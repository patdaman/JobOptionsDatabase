﻿/*
*   SSMA warning messages:
*   A2SS0030: View 'hourlyitems Query' has a name that might cause problems for the Access application to function correctly against SQL Server.
*/

CREATE VIEW dbo.[hourlyitems Query]
AS 
   /*Generated by SQL Server Migration Assistant for Access version 7.8.0.*/
   SELECT 
      [hourlyitems].[id], 
      [hourlyitems].[Item], 
      [hourlyitems].[uom], 
      [hourlyitems].[rate], 
      [hourlyitems].[reid], 
      [hourlyitems].[deptcode]
   FROM [hourlyitems]
GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'Make Em Pay.[hourlyitems Query]', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'VIEW', @level1name = N'hourlyitems Query';


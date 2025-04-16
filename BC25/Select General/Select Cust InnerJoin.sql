USE [Demo Database BC (25-0)]
GO

SELECT [No_],Name,COUNT([No_]) AS Records
  FROM [CRONUS UK Ltd_$Customer$437dbf0e-84ff-417a-965d-ed2bb9650972] AS C
  INNER JOIN [CRONUS UK Ltd_$Detailed Cust_ Ledg_ Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS CLE
  ON C.[No_] = CLE.[Customer No_] 
  GROUP BY [No_],Name
  ORDER BY COUNT([No_]) DESC

GO
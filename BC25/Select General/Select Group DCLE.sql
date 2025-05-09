USE [Demo Database BC (25-0)]
GO

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  [Posting Date],
		[Entry Type],
		SUM([Amount (LCY)]) AS Value,
		COUNT(*) AS Number
  FROM [CRONUS UK Ltd_$Detailed Cust_ Ledg_ Entry$437dbf0e-84ff-417a-965d-ed2bb9650972]
  WHERE [Posting Date] > '01-01-2020'
  AND [Entry Type] = 1
  GROUP BY [Posting Date],[Entry Type]
  HAVING SUM([Amount (LCY)]) > 1000
  ORDER BY SUM([Amount (LCY)]) DESC

GO
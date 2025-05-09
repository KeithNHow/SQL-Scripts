USE [Demo Database BC (25-0)]
GO

SELECT	DCLE.[Customer No_] AS Customer,
		C.[Name],
		Convert(Date,DCLE.[Posting Date]) AS [Post Date],
		Convert(Money,Round([Amount (LCY)],2)) AS Amount,
		Rank() OVER(ORDER BY [Amount (LCY)]) AS Ranking
  FROM [CRONUS UK Ltd_$Detailed Cust_ Ledg_ Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS DCLE
  
  INNER JOIN [CRONUS UK Ltd_$Customer$437dbf0e-84ff-417a-965d-ed2bb9650972] AS C
  ON C.No_ = DCLE.[Customer No_]

  WHERE [Document Type] = 2
  ORDER BY [Ranking] DESC

GO
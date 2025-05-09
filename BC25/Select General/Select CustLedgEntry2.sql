USE [Demo Database BC (25-0)]
GO

SELECT C.[No_], C.[Name], CLE.[Document No_],
    CONVERT(Decimal(18,2),SUM(DCLE.Amount)) AS Rem_Amount,
	COUNT(CLE.[Document No_]) AS Records
	FROM [CRONUS UK Ltd_$Customer$437dbf0e-84ff-417a-965d-ed2bb9650972] AS C
		
	INNER JOIN [CRONUS UK Ltd_$Cust_ Ledger Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS CLE 
	ON C.No_ = CLE.[Customer No_]		
		
	INNER JOIN [CRONUS UK Ltd_$Detailed Cust_ Ledg_ Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS DCLE 
	ON CLE.[Customer No_] = DCLE.[Customer No_]
		
	AND CLE.[Entry No_] = DCLE.[Cust_ Ledger Entry No_]
	AND CLE.[Currency Code] = ''
		
	GROUP BY C.[No_], C.[Name], CLE.[Document No_] 	 

GO
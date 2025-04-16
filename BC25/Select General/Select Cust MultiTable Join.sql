USE [Demo Database BC (25-0)]
GO

SELECT C.[No_],
	   C.[Name],
   	   CLE.[Document No_],
	   CLE.[Document Type],
	   CONVERT(Date,CLE.[Posting Date]) AS Post_Date,
	   CONVERT(Decimal(18,2),DCLE.[Amount (LCY)]) AS Amount_LCY
	FROM [CRONUS UK Ltd_$Customer$437dbf0e-84ff-417a-965d-ed2bb9650972] AS C
	
	INNER JOIN [CRONUS UK Ltd_$Cust_ Ledger Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS CLE 
	ON C.No_ = CLE.[Customer No_]		
	
	INNER JOIN [CRONUS UK Ltd_$Detailed Cust_ Ledg_ Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS DCLE 
	ON CLE.[Customer No_] = DCLE.[Customer No_]

	AND CLE.[Document No_] = DCLE.[Document No_]
	AND CLE.[Document Type] IN (2,3)
	AND CLE.[Open] = 1

	ORDER BY C.[No_]
GO
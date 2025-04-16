USE [Demo Database BC (17-0)]
GO

SELECT  Concat(C.[No_],' ',LTrim(C.Name)) AS Customer,
		Convert(Decimal(18,2),C.[Credit Limit (LCY)]) AS Credit_Limit
FROM [CRONUS UK Ltd_$Customer$437dbf0e-84ff-417a-965d-ed2bb9650972] AS C

GO
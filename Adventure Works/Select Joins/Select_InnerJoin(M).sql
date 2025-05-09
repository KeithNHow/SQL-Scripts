USE [Demo Database BC (17-0)]
GO

SELECT C.[No_]
      ,C.[Name]       
	  ,CLE.[Entry No_]
	  ,CLE.[Closed at Date]
	  ,CLE.[Open]
	  ,CLE.[Posting Date]  
	  ,CLE.[Document Type]
	  ,DCLE.[Cust_ Ledger Entry No_]
	  ,DCLE.[Document Type]
	  ,DCLE.[Amount (LCY)]
  FROM [dbo].[CRONUS UK Ltd_$Customer$437dbf0e-84ff-417a-965d-ed2bb9650972] AS C
  INNER JOIN [dbo].[CRONUS UK Ltd_$Cust_ Ledger Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS CLE  
  ON C.[No_] = CLE.[Customer No_]
  INNER JOIN [dbo].[CRONUS UK Ltd_$Detailed Cust_ Ledg_ Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS DCLE
  ON CLE.[Entry No_] = DCLE.[Cust_ Ledger Entry No_]
  WHERE C.[No_] = '10000'
  AND CLE.[Closed at Date] = '1753-01-01'
  AND CLE.[Open] = 1
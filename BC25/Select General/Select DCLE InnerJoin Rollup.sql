USE [Demo Database BC (25-0)]
GO

SELECT C.No_,
       Sum(Round(Convert(money,D.[Debit Amount (LCY)]),2)) AS [Debit Total],
       Sum(Round(Convert(money,D.[Credit Amount (LCY)]),2)) AS [Credit Total],
       Sum(Round(Convert(money,D.[Debit Amount (LCY)]),2)) - Sum(Round(Convert(money,D.[Credit Amount (LCY)]),2)) AS [Net Total]  
  FROM [dbo].[CRONUS UK Ltd_$Customer$437dbf0e-84ff-417a-965d-ed2bb9650972] AS C
  INNER JOIN [dbo].[CRONUS UK Ltd_$Detailed Cust_ Ledg_ Entry$437dbf0e-84ff-417a-965d-ed2bb9650972] AS D
  ON C.[No_] = D.[Customer No_] 
  WHERE C.Blocked = 0
  GROUP BY C.[No_] WITH ROLLUP
  ORDER BY [Net Total] DESC

GO
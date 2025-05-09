USE [Test]
GO

CREATE PROC [dbo].[Proc_CustomerBalance]
AS
BEGIN
  SET @CustBalance = PrintCustomerBalance.Balance

  Select C.Name, C.Balance
  FROM View_CustBalance As C
  WHERE C.Balance = @CustBalance

	RETURN [C.Name, C.Balance]
END
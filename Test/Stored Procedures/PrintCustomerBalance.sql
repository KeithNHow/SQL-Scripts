USE [Test]
GO

-- Stored Procedure to print customer balance where customer balance > 56
CREATE PROC [dbo].[Proc_PrintPriceForCustomer]
AS
BEGIN
	DECLARE @CustName nvarchar(50)
	DECLARE @CustBalance decimal(38,20) = 56

	EXECUTE @CustBalance = View_CustBalance @CustName, @CustBalance
	
	PRINT	'Customer ' + @CustName + ' has account balance = ' + @CustBalance
END
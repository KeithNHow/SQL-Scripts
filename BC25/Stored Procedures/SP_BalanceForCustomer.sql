USE [Test]
GO

/****** Object:  StoredProcedure [dbo].[SP_BalanceForCustomer]    Script Date: 10/04/2025 19:15:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Stored Procedure to print customer balance where customer balance > 56
CREATE PROCEDURE [dbo].[SP_BalanceForCustomer]
AS
BEGIN
	DECLARE @NewBalance INT
	DECLARE @CustomerBalance INT = 26

	EXECUTE @NewBalance = [dbo].[SP_CustomersBalance] @CustomerBalance
	
	PRINT 'Customer Balance = ' + CONVERT(nvarchar,@NewBalance)
	RETURN @NewBalance
END
GO



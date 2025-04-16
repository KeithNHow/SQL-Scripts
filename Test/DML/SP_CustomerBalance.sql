USE [Test]
GO

/****** Object:  StoredProcedure [dbo].[SP_CustomersBalance]    Script Date: 16/04/2025 20:57:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Stored Procedure to show customer balance
CREATE PROCEDURE [dbo].[SP_CustomersBalance] 
(
	@CustBalance INT
)
AS
BEGIN
	DECLARE @Balance INT = 40.22
	
	SET @CustBalance = @Balance + @CustBalance 
	
	IF @CustBalance > 50
		RETURN @CustBalance
	ELSE
		RETURN @CustBalance
END
GO



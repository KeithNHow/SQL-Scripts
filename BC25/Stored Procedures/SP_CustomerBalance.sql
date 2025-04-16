USE [Test]
GO

/****** Object:  StoredProcedure [dbo].[SP_CustomersBalance]    Script Date: 10/04/2025 19:17:23 ******/
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
	DECLARE @Balance INT = 40
	
	SET @CustBalance = @Balance + @CustBalance 
	
	IF @CustBalance > 50
		RETURN @CustBalance
	ELSE
		RETURN @CustBalance
END
GO



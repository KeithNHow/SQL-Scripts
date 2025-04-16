USE [Test]
GO

/****** Object:  StoredProcedure [dbo].[SP_BalanceForCustomer]    Script Date: 16/04/2025 20:56:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- Stored Procedure to print customer balance where customer balance > 56
CREATE PROCEDURE [dbo].[SP_BalanceForCustomer]
(
	@CustomerBalance int = 0,
	@CustomerName nvarchar(50) = ''
)
WITH EXECUTE AS CALLER
AS
BEGIN 
	SET NOCOUNT ON;
	DECLARE @NewBalance INT
	DECLARE @RowCount INT = 0
		
	IF @CustomerBalance = 0 
		SET @CustomerBalance = 27
	IF @CustomerName = ''
		SET @CustomerName = 'Kids Ur Us'

	BEGIN TRY
		BEGIN TRANSACTION;

		UPDATE Customer 
		SET Phone_Number = '01224 568300', @RowCount += 1
		OUTPUT INSERTED.[No.], INSERTED.[Name]
		WHERE [Name] = @CustomerName
		
		COMMIT TRANSACTION
	END TRY
    BEGIN CATCH
        -- Rollback any active or uncommittable transactions
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION
	END CATCH

	EXECUTE @NewBalance = [dbo].[SP_CustomersBalance] @CustomerBalance
	
	PRINT 'Customer Balance = ' + CONVERT(nvarchar,@NewBalance) + ' Row Count = ' + CONVERT(nvarchar,@RowCount)
	RETURN @NewBalance
END
GO



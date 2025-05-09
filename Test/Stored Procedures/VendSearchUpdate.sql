USE [Test]
GO

-- =============================================
-- Author:		Keith How
-- Create date: 11/02/2017
-- Description:	Updates the Vendor table to set the Search field to the upper case of the Name field
-- =============================================

CREATE PROCEDURE [dbo].[Proc_VendorUpdate]
AS
BEGIN
	UPDATE Vendor
    SET Vendor.[Search] = UPPER(Vendor.[Name])
	WHERE Vendor.[Search] = ''
END

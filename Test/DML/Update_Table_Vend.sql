USE [Test]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Keith How
-- Create date: 08/11/2020
-- Description:	Update Search field on Vendor to be uppercase Name
-- =============================================

-- SET NOCOUNT ON added to prevent extra result sets from interfacing with select statements
SET NOCOUNT ON;

UPDATE Vendor
SET Vendor.[Search] = UPPER(Vendor.[Name])
WHERE Vendor.[Search] = ''

GO

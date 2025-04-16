USE [Test]
GO

-- Trigger to autogenerate a number for the PurchOrderHeader table
CREATE TRIGGER Trig_AutogenNum ON PurchOrderHeader
AFTER INSERT
AS
SELECT @@IDENTITY AS [No.]
GO 
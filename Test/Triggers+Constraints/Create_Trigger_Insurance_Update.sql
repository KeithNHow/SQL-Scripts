USE [Test]
GO

-- Trigger to update the [Search] field to upper case after an insert or update on the Vendor table
CREATE TRIGGER Trig_VendorUpperCase ON Vendor
AFTER INSERT, UPDATE
AS
BEGIN
   UPDATE Vendor
   SET [Search]=Upper([Search])
   WHERE [No.] IN (SELECT [No.] FROM INSERTED);
END;
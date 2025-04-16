USE [Test]
GO

-- Trigger to set the Search column to upper case after insert or update
CREATE TRIGGER SearchNameUpperCase ON Customer
AFTER INSERT, UPDATE
AS
UPDATE Customer
SET Customer.Search = UPPER(Customer.Search)
FROM inserted
WHERE Customer.[No.] = inserted.[No.] 
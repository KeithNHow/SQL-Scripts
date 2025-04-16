-- Variables and Print
DECLARE @age INT;
DECLARE @firstName CHAR(20), @lastName CHAR(20);
SET @lastName='Forta';
SET @firstName='Ben';
SET @age=21;
PRINT RTrim(@firstName) + ' ' + RTrim(@LastName) + ' is ' + Convert(nvarchar, @age) + ' years old'
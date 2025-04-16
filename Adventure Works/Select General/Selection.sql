USE [AdventureWorks2012]
GO

-- Define variables
DECLARE @Win INT, @Weekday nvarchar(20)
DECLARE @open BIT, @process BIT, @Weekend nvarchar(3), @MyDate DATE

-- Get the day of week
SET @Win = DatePart(dw, GetDate());
SET @MyDate = GetDate()

-- Open for business today? 
SELECT @Weekday = CASE @Win
	WHEN 1 THEN 'Sunday'
	WHEN 2 THEN 'Monday'
	WHEN 3 THEN 'Tuesday'
	WHEN 4 THEN 'Wednesday'
	WHEN 5 THEN 'Thursday'
	WHEN 6 THEN 'Friday'
	WHEN 7 THEN 'Saturday'
END

IF @Win = 7 OR @Win = 1
   BEGIN
      SET @open = 0
      SET @process = 0
	  SET @Weekend = 'Yes'
   END
ELSE
   BEGIN
      SET @open = 1
      SET @process = 1
	  SET @Weekend = 'No'
   END

SELECT @Weekend AS [Week End], @Weekday AS [Week Day], @MyDate AS [Current Date]
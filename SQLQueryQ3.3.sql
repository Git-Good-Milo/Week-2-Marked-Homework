USE MY_SQL_TEST_FINAL

--EXEC sp_RENAME 'EndDate.[Check_Date]' , 'Check Date', 'COLUMN';
-- Used to change the name From Date_Check to 'Check Date'

UPDATE 
	EndDate
SET 
	[Check Date] = DATEADD(dd, (8*7),'2018-01-15')
WHERE 
	EndDate.[Course ID] <= 6;

UPDATE 
	EndDate
SET 
	[Check Date] = DATEADD(dd, (12*7),'2018-01-22')
WHERE 
	EndDate.[Course ID] >= 7;



USE MY_SQL_TEST_FINAL


CREATE TABLE StartDate
(
	[Start Date] DATE,
	[Course ID] INT 
	NOT NULL FOREIGN KEY ([Course ID])
	REFERENCES CourseDetails([Course ID])

);
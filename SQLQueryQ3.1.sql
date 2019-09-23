USE MY_SQL_TEST_FINAL

--Q3.1
-- Newly formed tables can now be joined

SELECT * FROM 
	CourseDetails
JOIN 
	StartDate ON StartDate.[Course ID] = CourseDetails.[Course ID]
JOIN 
	EndDate ON EndDate.[Course ID] = CourseDetails.[Course ID]
JOIN
	AcademyName ON AcademyName.[Course ID] = CourseDetails.[Course ID]
JOIN 
	RoomName ON RoomName.[Course ID] = CourseDetails.[Course ID]
JOIN
	Trainers ON Trainers.[Course ID] = CourseDetails.[Course ID]
JOIN
	Spartans ON Spartans.[Course ID] = CourseDetails.[Course ID]
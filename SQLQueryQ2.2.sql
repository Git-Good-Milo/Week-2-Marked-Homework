USE MY_SQL_TEST_FINAL


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
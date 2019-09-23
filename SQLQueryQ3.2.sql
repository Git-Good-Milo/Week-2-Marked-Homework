USE MY_SQL_TEST_FINAL

-- Exec sp_REMANE used to change the coloumn name of 'Spartan Name' to 'Spartan Initials'
EXEC sp_RENAME 'Spartans.[Spartan Name]' , 'Spartan Initials', 'COLUMN';

--Update Statement is used to alter the names of the 'Spartan Name' coloumn to their initials in 'Spartan initials' Coloumn.

UPDATE Spartans
SET 
	[Spartan Initials] = 'A. S '
WHERE 
	Spartan_ID = 14;

UPDATE 
	Spartans
SET 
	[Spartan Initials] = 'J. W'
WHERE 
	Spartan_ID = 15;

UPDATE Spartans
SET 
	[Spartan Initials] = 'N W'
WHERE 
	Spartan_ID = 16;

UPDATE Spartans
SET 
	[Spartan Initials] = 'J. J'
WHERE 
	Spartan_ID = 17;

UPDATE Spartans
SET 
	[Spartan Initials] = 'K. P'
WHERE 
	Spartan_ID = 18;

UPDATE Spartans
SET 
	[Spartan Initials] = 'P. B'
WHERE 
	Spartan_ID = 19;

UPDATE Spartans
SET 
	[Spartan Initials] = 'M. K'
WHERE 
	Spartan_ID = 20;

UPDATE Spartans
SET 
	[Spartan Initials] = 'J. C'
WHERE 
	Spartan_ID = 21;

UPDATE Spartans
SET 
	[Spartan Initials] = 'J. M'
WHERE 
	Spartan_ID = 22;

UPDATE Spartans
SET 
	[Spartan Initials] = 'K. C'
WHERE 
	Spartan_ID = 23;

UPDATE Spartans
SET 
	[Spartan Initials] = 'A. C'
WHERE 
	Spartan_ID = 24;

UPDATE Spartans
SET 
	[Spartan Initials] = 'M. B'
WHERE 
	Spartan_ID = 25;

UPDATE Spartans
SET 
	[Spartan Initials] = 'O. M'
WHERE 
	Spartan_ID = 26;

-- New joined table is now called
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

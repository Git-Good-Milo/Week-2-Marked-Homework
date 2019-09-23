USE MY_SQL_TEST_FINAL

--Q2.1
-- Each Individual table is to be created. Tables should be Normalised.
-- Set Primary keys and Foreign keys so that tables can be macthed up for accurate data pulling

CREATE TABLE CourseDetails
(
	[Course ID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Course Name] VARCHAR (32),
	
);
CREATE TABLE StartDate
(
	[Start Date] DATE,
	[Course ID] INT 
	NOT NULL FOREIGN KEY ([Course ID])
	REFERENCES CourseDetails([Course ID])
);

CREATE TABLE Spartans
(
	[Spartan_ID] INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
	[Spartan Name] VARCHAR(32),
	[Course ID] INT
	FOREIGN KEY ([Course ID])
	REFERENCES CourseDetails([Course ID])
)
CREATE TABLE AcademyName
(	
	[Academy ID] INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
	[Academy Name] VARCHAR(24),
	[Course ID] INT
	FOREIGN KEY ([Course ID])
	REFERENCES CourseDetails([Course ID])
)

CREATE TABLE EndDate
(
	[End Date] DATE,
	[Course ID] INT
	FOREIGN KEY ([Course ID])
	REFERENCES CourseDetails([Course ID])
)

CREATE TABLE RoomName
(	
	[Room ID] INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
	[Room Name] VARCHAR (24),
	[Course ID] INT
	FOREIGN KEY ([Course ID])
	REFERENCES CourseDetails([Course ID])
)

CREATE TABLE Trainers
(
	[Trainer ID] INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
	[Trainer Name] VARCHAR (32),
	[Course ID] INT
	FOREIGN KEY ([Course ID])
	REFERENCES CourseDetails([Course ID])

)
CREATE DATABASE CodeAcademy

CREATE TABLE Groups (
	Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Name varchar(50) NOT NULL,
	GroupTypeId int NOT NULL FOREIGN KEY REFERENCES GroupType(Id) ,
	BeginDate date NOT NULL,
	EndDate date NOT NULL,
	LessonHours integer NOT NULL,
)


CREATE TABLE GroupType (
	Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Name varchar(50) NOT NULL,
)


CREATE TABLE Students (
	Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Name varchar(50) NOT NULL,
	Surname varchar(50) NOT NULL,
	BirthDate date NOT NULL,
	RegistrationDate date NOT NULL,
	PhoneNumber varchar(50) NOT NULL UNIQUE,
	Email varchar(50) NOT NULL UNIQUE,
	GroupId int NOT NULL FOREIGN KEY REFERENCES Groups(Id)
)


CREATE TABLE Topics (
	Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Name varchar(50) NOT NULL,
	LessonHours int NOT NULL,
	GroupTypeId int NOT NULL FOREIGN KEY REFERENCES GroupType(Id)
)


CREATE TABLE ExerciseTypes(
	Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Name varchar(50) NOT NULL,
)


CREATE TABLE Exercises (
	Id int NOT NULL PRIMARY KEY IDENTITY(1,1),
	Name varchar(50) NOT NULL,
	Grade int NOT NULL,
	ExerciseTypeId int NOT NULL FOREIGN KEY REFERENCES ExerciseTypes(Id),
	GroupId int NOT NULL FOREIGN KEY REFERENCES Groups(Id),
	TopicId int NOT NULL FOREIGN KEY REFERENCES Topics(Id)
)



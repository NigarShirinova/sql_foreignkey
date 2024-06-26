CREATE DATABASE DrugstoreApp

CREATE TABLE Owners(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(50) NOT NULL,
Surname NVARCHAR(50) NOT NULL
)

CREATE TABLE DrugStores(
Id INT PRIMARY KEY IDENTITY(1,1),
OwnersId INT FOREIGN KEY REFERENCES Owners(Id)
)

ALTER TABLE DrugStores
ADD Name varchar(50)

CREATE TABLE Druggists(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(50) NOT NULL,
Surname NVARCHAR(50) NOT NULL,
Age DATE,
Experience INT,
DrugStoreId INT FOREIGN KEY REFERENCES DrugStores(Id)
)

CREATE TABLE DRUGS(
Id INT PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(50) NOT NULL,
Price DECIMAL,
Count INTEGER,
DrugStoreId INT FOREIGN KEY REFERENCES DrugStores(Id)
)


INSERT INTO Owners
VALUES('Nigar','Shirinova')

INSERT INTO DrugStores
VALUES(1,'Aptek')

INSERT INTO Druggists
VALUES('Salam', 'Salamzade','2000-05-05', 10, 1)

INSERT INTO DRUGS
VALUES('Paracetamol',1.5, 3, 1)


SELECT * FROM Owners
SELECT * FROM Druggists
SELECT * FROM DRUGS
SELECT * FROM DrugStores
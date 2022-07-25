-- Create Database LMT_University
CREATE DATABASE LMT_University;

-- Create a schema enrol
CREATE SCHEMA enrol;

--drop table enrol.Student
--drop table enrol.Lecturer
--drop table enrol.Department
--drop table enrol.Address

-- Create address Table along with Auto_increment constraint 
CREATE TABLE enrol.Address (
    AddressID int  NOT NULL IDENTITY ,
    StreetAddress varchar(255) ,
    City varchar (255) NOT NULL,
    State varchar(255),
    PostalCode varchar(255),
    Country varchar(255)  NOT NULL,
    InsertedOn DATETIME NOT NULL
);

ALTER TABLE enrol.Address
   ADD CONSTRAINT PK_AddressID PRIMARY KEY CLUSTERED (AddressID);

-- insert into address table
INSERT INTO enrol.Address (StreetAddress, City, State, PostalCode, Country, InsertedOn)
            Values ('5 Schurz Lane', 'Gryb�w', NULL, '33-330', 'Poland', GETDATE()),
             ('628 Waubesa Drive', 'Jinsheng', NULL, NULL, 'China', GETDATE()),
             ('44135 Northfield Way', 'Nowy Dw�r Mazowiecki', NULL, '05-160', 'Poland', GETDATE()),
             ('335 Bellgrove Road', 'Gaoqiao', NULL, NULL, 'China', GETDATE()),
             ('28 Victoria Junction', 'Bukovec', NULL, '739 84', 'Czech Republic', GETDATE()),
             ('6 Stuart Road', 'Wushan', NULL, NULL, 'China', GETDATE()),
             ('730 Barby Street', 'Zhengchang', NULL, NULL, 'China', GETDATE()),
             ('22742 Schiller Street', 'Sumurwaru', NULL, NULL, 'Indonesia', GETDATE()),
             ('31 Elka Junction', 'Cigembong', NULL, NULL, 'Indonesia', GETDATE()),
             ('5 Kenwood Circle', 'Davao', NULL, '8000', 'Philippines', GETDATE()),
             ('99 Bunker Hill Crossing', 'Zarasai', NULL, '32001', 'Lithuania', GETDATE()),
             ('5 Farragut Center', 'Jaromerice', NULL, '569 44', 'Czech Republic', GETDATE()),
             ('25 Lerdahl Street', 'Nanshi', NULL, NULL, 'China', GETDATE()),
             ('918 Bonner Way', 'Phayakkhaphum Phisai', NULL, '44110', 'Thailand', GETDATE()),
             ('9 West Alley', 'Sempu', NULL, NULL, 'Indonesia', GETDATE()),
             ('234 Hagan Lane', 'Rennes', 'Bretagne', '35033', 'France', GETDATE()),
             ('33942 Eagle Crest Trail', 'Oliveiras', 'Porto', '4745-235', 'Portugal', GETDATE()),
             ('20791 Hermina Way', 'B?o L?c', NULL, NULL, 'Vietnam', GETDATE()),
             ('86 Lake View Way', 'Marsa Alam', NULL, NULL, 'Egypt', GETDATE()),
             ('19732 Burning Wood Parkway', 'Pite�', 'Norrbotten', '944 73', 'Sweden', GETDATE()),
             ('9320 Oak Valley Road', 'Rathangani', NULL, 'A45', 'Ireland', GETDATE()),
             ('2638 Waubesa Circle', 'Honda', NULL, '732048', 'Colombia', GETDATE()),
             ('6999 Monument Center', 'Cortes', NULL, '6341', 'Philippines', GETDATE()),
             ('1 Warbler Hill', 'Proletar', NULL, NULL, 'Tajikistan', GETDATE()),
             ('1311 Crowley Street', 'Baghlan', NULL, NULL, 'Afghanistan', GETDATE()),
             ('19 Walton Way', '�ldziyt', NULL, NULL, 'Mongolia', GETDATE()),
             ('1 Glacier Hill', 'Cergy-Pontoise', '�le-de-France', '95304', 'France', GETDATE()),
             ('5094 Gateway Way', '�ivinice', NULL, NULL, 'Bosnia and Herzegovina', GETDATE()),
             ('2 Roth Pass', 'Tuatuka', NULL, NULL, 'Indonesia', GETDATE()),
             ('89531 Northview Road', 'Ganyi', NULL, NULL, 'China', GETDATE());

--Creating the department table
CREATE TABLE enrol.Department(
	DepartmentID int IDENTITY NOT NULL,
	DepartmentName varchar(25) NOT NULL,
	DepartmentDescription varchar(100) NOT NULL,
	DepartmentCapacity int NOT NULL,
	InsertedOn datetime NOT NULL);

-- adding the PK for Department table 
ALTER TABLE enrol.Department
   ADD CONSTRAINT PK_DepartmentID PRIMARY KEY CLUSTERED (DepartmentID);


-- inserting into Department table
Insert into enrol.Department(DepartmentName, DepartmentDescription, DepartmentCapacity, InsertedOn)
Values
	('IT','Information Technology',60,GETDATE()),
	('EE','Electrical Engineering',120,GETDATE()),
	('CSE','Computer Science Engineering',140,GETDATE()),
	('ME','Mechanical Engineering',110,GETDATE()),
	('ECE','Electronic and Communication Engineering',80,GETDATE()),
	('AEIE','Applied Electronics and Instrumentation Engineering',50,GETDATE());

-- create Lecturer Table
	CREATE TABLE enrol.Lecturer(
	LecturerID int IDENTITY NOT NULL,
	LecturerName varchar(50) NOT NULL,
	LecturerHighestQualification varchar(25),
	LecturerAge datetime NOT NULL,
	DepartmentID int NOT NULL,
	InsertedOn datetime);

-- Create Lecturer clustered PK index
ALTER TABLE enrol.Lecturer
   ADD CONSTRAINT PK_LecturerID PRIMARY KEY CLUSTERED (LecturerID);

-- creating the foriegn Keys
ALTER TABLE enrol.Lecturer ADD CONSTRAINT FK_Lecturer_DepartmentID FOREIGN KEY (DepartmentID)
REFERENCES enrol.Department (DepartmentID);

-- Insert values into Lecturer Table

Insert into enrol.Lecturer(LecturerName, LecturerHighestQualification, LecturerAge, DepartmentID, InsertedOn)
	Values
	('Peder Bernaldez','M.Tech','2010-10-10',6,GETDATE()),
	('Emile Adolthine','PhD','2010-04-04',5,GETDATE()),
	('Titos Iorizzi','M.Tech','2012-04-09',4,GETDATE()),
	('Ferris Falck','MSC','2011-05-05',3,GETDATE()),
	('Georgie McIlwraith','M.Tech','2017-05-08',2,GETDATE()),
	('Karlen Kearn','MSC','2019-03-03',1,GETDATE()),
	('Axe Whistlecroft','MCA','2019-03-03',6,GETDATE()),
	('Drucie Bazek','PhD','2019-04-01',5,GETDATE()),
	('Antony Gamlin','M.Tech','2019-04-01',4,GETDATE()),
	('Alexina Moncaster','MBA','2019-04-01',3,GETDATE()),
	('Milzie Kabos','MCA','2019-03-03',2,GETDATE()),
	('Arlene Glendza','MS','2019-03-03',1,GETDATE()),
	('Kirby Kabisch','M.Tech','2019-04-01',1,GETDATE()),
	('Selma Eliyahu','PhD','2019-04-01',2,GETDATE()),
	('Ilysa Chooter','M.Tech','2019-04-01',3,GETDATE()),
	('Rozalie Pennycord','MSC','2010-10-10',4,GETDATE()),
	('Dacey Glidder','M.Tech','2010-04-04',5,GETDATE()),
	('Claretta Diaper','MSC','2012-04-09',6,GETDATE()),
	('Kalil Pendleton','MCA','2011-05-05',6,GETDATE()),
	('Trudey Brech','PhD','2011-10-05',5,GETDATE()),
	('Gypsy Ambrosini','M.Tech','2011-03-30',4,GETDATE()),
	('Lauree Ribbon','MBA','2013-04-04',3,GETDATE()),
	('Hugo Valois','MCA','2012-04-29',2,GETDATE()),
	('Perren Chetter','MS','2018-05-03',1,GETDATE()),
	('Fawn Coffelt','M.Tech','2020-02-26',1,GETDATE()),
	('Terrie Golby','PhD','2020-02-26',2,GETDATE()),
	('Jeanette Ciraldo','M.Tech','2020-03-26',3,GETDATE()),
	('Elfrieda Elijahu','MSC','2020-03-26',4,GETDATE()),
	('Guthry Blaes','M.Tech','2020-03-26',5,GETDATE()),
	('Richy Saice','MSC','2020-02-26',6,GETDATE());


--Creating the table Student
CREATE TABLE enrol.Student(
	StudentID int NOT NULL IDENTITY,
	StudentFirstName varchar(255) NOT NULL, 
	StudentLastName varchar(255), 
	StudentDOB date NOT NULL, 
	StudentMobile varchar(255),
	StudentRollNo int NOT NULL, 
	DepartmentID int NOT NULL, 
	AddressID int NOT NULL, 
	InsertedOn datetime NOT NULL       
    )

-- creating the foriegn Keys
ALTER TABLE enrol.Student ADD CONSTRAINT FK_Student_DepartmentID FOREIGN KEY (DepartmentID)
REFERENCES enrol.Department (DepartmentID);

ALTER TABLE enrol.Student ADD CONSTRAINT FK_Student_AddressID FOREIGN KEY (AddressID)
REFERENCES enrol.Address (AddressID);



	--Creating the clustered primary key
ALTER TABLE enrol.Student
   ADD CONSTRAINT PK_StudentID PRIMARY KEY CLUSTERED (StudentID);

--Inserting the data into (the table 
INSERT INTO enrol.Student VALUES ('Joey','Ironside','1995-11-22',1276234258,1,3,1,GETDATE());
INSERT INTO enrol.Student VALUES ('Karlotta','Garraway','1997-07-06',2192431615,2,3,24,GETDATE());
INSERT INTO enrol.Student VALUES ('Jerry','Stutte','1996-12-18',4125425783,3,1,17,GETDATE());
INSERT INTO enrol.Student VALUES ('Yehudit','Rahill','1995-01-15',9939485406,4,2,29,GETDATE());
INSERT INTO enrol.Student VALUES ('Cele','Crosetto','1998-11-24',3622733725,5,3,16,GETDATE());
INSERT INTO enrol.Student VALUES ('Hazlett','Mowsdale','1995-04-09',1482883476,6,4,23,GETDATE());
INSERT INTO enrol.Student VALUES ('Carlyn','Marks','1996-12-27',6129154080,7,5,20,GETDATE());
INSERT INTO enrol.Student VALUES ('Ellis','Boatman','1997-04-29',8269707118,8,6,7,GETDATE());
INSERT INTO enrol.Student VALUES ('Florina','Boyack','1997-08-03',9623352863,9,3,14,GETDATE());
INSERT INTO enrol.Student VALUES ('Sayres','Jennings','1996-05-12',8675076454,11,4,27,GETDATE());
INSERT INTO enrol.Student VALUES ('Borg','Innett','1997-09-03',5256034960,10,1,19,GETDATE());
INSERT INTO enrol.Student VALUES ('Jarid','Sprull','1998-11-02',1391270091,12,2,6,GETDATE());
INSERT INTO enrol.Student VALUES ('Elvera','Bannard','1996-09-07',7897232539,13,4,24,GETDATE());
INSERT INTO enrol.Student VALUES ('Ody','Inggall','1995-03-05',6094734260,14,5,25,GETDATE());
INSERT INTO enrol.Student VALUES ('Curcio','McWhan','1996-07-29',2394865847,15,6,11,GETDATE());
INSERT INTO enrol.Student VALUES ('Connie','Sinnie','1995-07-19',1473936221,16,6,23,GETDATE());
INSERT INTO enrol.Student VALUES ('Auroora','Nel','1996-09-05',2216400391,17,3,14,GETDATE());
INSERT INTO enrol.Student VALUES ('Wendall','Rosendale','1999-12-30',1818120249,18,3,28,GETDATE());
INSERT INTO enrol.Student VALUES ('Hadley','Bradbury','1996-08-16',6518067697,19,1,10,GETDATE());
INSERT INTO enrol.Student VALUES ('Celine','Smales','1999-07-11',7106508130,20,2,10,GETDATE());
INSERT INTO enrol.Student VALUES ('Jesselyn','Stevenson','1998-05-16',9231672206,21,2,22,GETDATE());
INSERT INTO enrol.Student VALUES ('Corinna','Pinkney','1998-01-16',8323630067,22,5,29,GETDATE());
INSERT INTO enrol.Student VALUES ('Orelle','Adamthwaite','1997-07-26',2539126766,23,3,17,GETDATE());
INSERT INTO enrol.Student VALUES ('Howie','Seaman','1997-12-01',9888259627,24,2,4,GETDATE());
INSERT INTO enrol.Student VALUES ('Sibyl','Corey','1996-07-18',4493239590,25,5,11,GETDATE());
INSERT INTO enrol.Student VALUES ('Ruperta','Peaker','1999-05-22',5124781263,26,5,4,GETDATE());
INSERT INTO enrol.Student VALUES ('Delmer','Roughey','1995-04-21',4175314364,27,3,22,GETDATE());
INSERT INTO enrol.Student VALUES ('Gifford','O''Scannill','1996-10-31',3134783726,28,4,22,GETDATE());
INSERT INTO enrol.Student VALUES ('Hedy','O''Hone','1998-03-29',7316228047,29,2,17,GETDATE());
INSERT INTO enrol.Student VALUES ('Shalna','Hyde-Chambers','1999-11-23',7455116160,30,5,6,GETDATE());
INSERT INTO enrol.Student VALUES ('Ferdie','Di Napoli','1995-01-17',1905908693,31,4,30,GETDATE());
INSERT INTO enrol.Student VALUES ('Piper','Giacomuzzo','1998-09-14',5499340503,32,6,4,GETDATE());
INSERT INTO enrol.Student VALUES ('Gerhardt','Schruurs','1999-11-18',8197494894,33,3,1,GETDATE());
INSERT INTO enrol.Student VALUES ('Mellicent','Buncher','1996-10-03',4584525312,34,5,28,GETDATE());
INSERT INTO enrol.Student VALUES ('Corette','Demead','1997-09-17',4909862137,35,5,17,GETDATE());
INSERT INTO enrol.Student VALUES ('Jorgan','Barson','1997-05-01',6022309183,36,1,21,GETDATE());
INSERT INTO enrol.Student VALUES ('Koral','Bowen','1998-05-12',4198817454,37,4,3,GETDATE());
INSERT INTO enrol.Student VALUES ('Allissa','Kitter','1998-08-17',7328676920,38,5,7,GETDATE());
INSERT INTO enrol.Student VALUES ('Townsend','Doughtery','1998-04-13',2639777958,39,4,7,GETDATE());
INSERT INTO enrol.Student VALUES ('Yolane','Geratt','1998-06-10',2069585951,40,6,17,GETDATE());
INSERT INTO enrol.Student VALUES ('Chrystel','Allwood','1996-09-07',6958461692,41,3,25,GETDATE());
INSERT INTO enrol.Student VALUES ('Dyana','Clutterbuck','1997-09-22',5842483886,42,1,1,GETDATE());
INSERT INTO enrol.Student VALUES ('Nikki','Edy','1999-01-10',5096155315,43,6,25,GETDATE());
INSERT INTO enrol.Student VALUES ('Hendrik','Surr','1997-04-05',2021255732,44,5,11,GETDATE());
INSERT INTO enrol.Student VALUES ('Marta','Bosch','1998-09-28',4075136713,45,6,5,GETDATE());
INSERT INTO enrol.Student VALUES ('Garrik','Pell','1999-04-14',3622733725,5,3,16,GETDATE());
INSERT INTO enrol.Student VALUES ('Stormi','Colbron','1998-10-21',9968113654,47,3,28,GETDATE());
INSERT INTO enrol.Student VALUES ('Angelique','Iacivelli','1995-06-07',9518365081,48,5,7,GETDATE());
INSERT INTO enrol.Student VALUES ('Zack','Hefforde','1999-07-25',5455693035,49,1,29,GETDATE());
INSERT INTO enrol.Student VALUES ('Gusella','Pettiford','1999-08-23',2425172721,50,4,3,GETDATE());


--- Queries Part-----

-- Question 9 --Anchal--
--a.List all the Student information from the Student table.
SELECT * FROM enrol.Student

--b. List all the Department information from the Department table.
SELECT * FROM enrol.Department

--c. List all the Lecturer information from the Lecturer table.
SELECT * FROM enrol.Lecturer

--d. List all the Address information from the Address table.
SELECT * FROM enrol.Address

--e.List the StudentFullName, StudentDOB, StudentMobile from Student 
SELECT StudentFirstName +' ' + StudentLastName as StudentFullName, StudentDOB, StudentMobile FROM enrol.Student

--f.List the StudentID, StudentFirstName, StudentLastName, StudentDOB, StudentMobile from Student StudentRollNo in AddressID 7
SELECT StudentID, StudentFirstName,StudentLastName, StudentDOB, StudentMobile, StudentRollNo FROM enrol.Student WHERE AddressID=7

--g.List all the student information whose first name is start with 'B'
SELECT * FROM enrol.Student WHERE StudentFirstName LIKE 'B%'

--h.List all the student information whose first name is start and end with 'A'
SELECT * FROM enrol.Student WHERE StudentFirstName LIKE '%A'

--i.Count the number of Student from Student table whose DepartmentID 6
SELECT COUNT(StudentID) FROM enrol.Student WHERE DepartmentID=6

--j.List all the StudentFullName, StudentAge, StudentMobile from Student
SELECT StudentFirstName +' ' + StudentLastName AS StudentFullName, 
DATEDIFF (YY,StudentDOB, GETDATE()) AS StudentAge,
StudentMobile
FROM enrol.Student

--k.List all the StudentFullName, StudentAge, StudentMobile whose Age>23 from Student 
SELECT StudentFirstName +' ' + StudentLastName AS StudentFullName, 
DATEDIFF (YY,StudentDOB, GETDATE()) AS StudentAge,
StudentMobile
FROM enrol.Student
WHERE DATEDIFF (YY,StudentDOB, GETDATE()) > 23

--l. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer.
SELECT LecturerID, LecturerName, LecturerHighestQualification,LecturerAge
FROM enrol.Lecturer

--m. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerAge from Lecturer whose HighestQualification is either �MS� or �PhD�.
SELECT LecturerID, LecturerName,LecturerAge, LecturerHighestQualification
FROM enrol.Lecturer
WHERE LecturerHighestQualification IN ('MS','PhD')

--n. List all the lecturer information who belongs to DepartmentID 2
SELECT * FROM enrol.Lecturer 
WHERE DepartmentID = 2

--o. List all the lecturer information whose name end with �R�.
SELECT * FROM enrol.Lecturer WHERE LecturerName LIKE '%R'

--p. List all the lecturer information whose name either start or end with �E�.
SELECT * FROM enrol.Lecturer WHERE LecturerName LIKE 'E%' OR LecturerName LIKE '%E'

--q. List all the lecturer name is in capital letter.
SELECT UPPER(LecturerName) FROM enrol.Lecturer

--r. Display 5 character from the lecturer name along with LecturerID and LecturerHighestQualification.
SELECT LEFT(LecturerName,5) AS Name, LecturerID, LecturerHighestQualification
FROM enrol.Lecturer

--s. List LecturerID, LecturerName, LecturerHighestQualification, LecturerAge(in year) [LecturerAge= Current Date � LecturerAge)] (in year).
SELECT LecturerID, LecturerName, LecturerHighestQualification,
DATEDIFF (YY,LecturerAge,GETDATE()) AS AGE
FROM enrol.Lecturer 

--u. List DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity from Department.
SELECT DepartmentID,DepartmentName, DepartmentDescription, DepartmentCapacity
FROM enrol.Department

--v. List all the Department information who�s DepartmentName is �ECE�.
SELECT * FROM enrol.Department
WHERE DepartmentName='ECE'


-- w  List all DepartmentName, DepartmentDescription, DepartmentCapacity from Department whose capacity is greater than 60.

SELECT DepartmentName, DepartmentDescription, DepartmentCapacity
FROM enrol.Department
Where DepartmentCapacity > 60;

--x. List all AddressID, StreetAddress, City, State, PostalCode, Country from Address.

SELECT AddressID, StreetAddress, City, State, PostalCode, Country
FROM enrol.Address


--y. List all AddressID, StreetAddress, City, State, PostalCode, Country from Address who belongs to �Poland� country.

SELECT AddressID, StreetAddress, City, State, PostalCode, Country
FROM enrol.Address
WHERE Country = 'Poland'

--z. List all the Address information whose state is null.

SELECT *
FROM enrol.Address
WHERE State IS NULL;

--aa. List all the Address information whose PostalCode is not null.

SELECT *
FROM enrol.Address
WHERE PostalCode IS NOT NULL;

--bb. List all the Address information whose City name is "Honda" and Country name is "Colombia" 


SELECT *
FROM enrol.Address
WHERE City = 'Honda' AND Country = 'Colombia';

-- ================================   QUERIES 10 ===========================
--- Pragathi
-- 10 a.List unique DOB from Student
SELECT DISTINCT StudentDOB FROM enrol.Student

-- 10 b.List unique DepartmentName from Department.
SELECT DISTINCT DepartmentName FROM enrol.Department

--10 c.	List unique Country name from Address
SELECT DISTINCT Country FROM enrol.Address

--10 d.	List unique State name from Address.
SELECT DISTINCT State FROM enrol.Address

--10 e.	List unique City name from Address.
SELECT DISTINCT City FROM enrol.Address

--10 f.	List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerYearService from Lecturer [LecturerYearService= Current Date � LecturerAge] (in year).
SELECT LecturerID, LecturerName, LecturerHighestQualification, (year(GETDATE()) - year(LecturerAge)) AS LecturerYearService
FROM enrol.Lecturer


-- 10 g. List all the LecturerID, LecturerName, LecturerHighestQualification, LecturerType from Lecturer [LecturerType= if LecturerYearService< 5 
--then "Begining Level Experience" else if LecturerYearService>= 5 and LecturerYearService<10 then "Mid Level experience" else "Experienced".

SELECT LecturerID, LecturerName, LecturerHighestQualification, 
	CASE WHEN year(GETDATE()) - year(LecturerAge)<5 THEN 'Beginning Level Experience'
		 WHEN year(GETDATE()) - year(LecturerAge)>=5 AND year(GETDATE()) - year(LecturerAge)<10 THEN 'Mid Level experience'
		 ELSE 'Experienced'
	END AS 'LecturerType'
FROM enrol.Lecturer

-- Question 11 - Mahmoud
-- a.	Display all Student and their Department Information based on the relationship
select A.*, B.*
from enrol.Student A
inner join enrol.Department B on A.DepartmentID = B.DepartmentID;

-- b.	Display all Student and their Address Information based on the relationship
select A.*, B.*
from enrol.Student A
inner join enrol.Address B on A.AddressID = B.AddressID;

--c.	Display all Department and their Lecturer Information based on the relationship
select A.*, B.*
from enrol.Department A
inner join enrol.Lecturer B on A.DepartmentID = B.DepartmentID;

-- d.	Display all Student with their Department with Lecturer Information based on the relationship.

select A.*, B.*, C.*
from enrol.Student A
inner join enrol.Department B on A.DepartmentID = B.DepartmentID
inner join enrol.Lecturer C on B.DepartmentID = C.DepartmentID;

-- e.	Display all Student with their Address and Department Information based on the relationship
select A.*, B.*, C.*
from enrol.Student A
inner join enrol.Address B on A.AddressID = B.AddressID
inner join enrol.Department C on A.DepartmentID = C.DepartmentID

-- f.	Display all Student with Address, Department and Lecturer Information based on the relationship.
select A.*, B.*, C.*, D.*
from enrol.Student A
inner join enrol.Address B on A.AddressID = B.AddressID
inner join enrol.Department C on A.DepartmentID = C.DepartmentID
inner join enrol.Lecturer D on C.DepartmentID = D.DepartmentID;

-- g.	Display all Student with Address, Department and Lecturer Information who belongs to either �ME� or �ECE� department
select A.*, B.*, C.*, D.*
from enrol.Student A
inner join enrol.Address B on A.AddressID = B.AddressID
inner join enrol.Department C on A.DepartmentID = C.DepartmentID
inner join enrol.Lecturer D on C.DepartmentID = D.DepartmentID
where C.DepartmentName in ('ME','ECE')
order by C.DepartmentName;

-- h.	Display Student with Department and their Lecturer information based on the LecturerHighestQualification either �MS� or �PhD�.
select A.*, B.*, C.*
from enrol.Student A
inner join enrol.Department B on A.DepartmentID = B.DepartmentID
inner join enrol.Lecturer C on B.DepartmentID = C.DepartmentID
where C.LecturerHighestQualification in ('MS','PhD');

-- i.	Display Student with Department and Address Information, where student belongs to �Thailand� country.

select A.*, B.*, C.*
from enrol.Student A
inner join enrol.Department B on A.DepartmentID = B.DepartmentID
inner join enrol.Address C on A.AddressID = C.AddressID
where C.country = 'Thailand';

-- j.	Display Count of Student, Department wise
select B.DepartmentID, count(A.StudentID) as StudentCount
from enrol.Student A
inner join enrol.Department B on A.DepartmentID = B.DepartmentID
group by B.DepartmentID
order by B.DepartmentID;

-- k.	Display Count of Lecturer, Department wise
select B.DepartmentID, count(A.LecturerID) as LecturerCount
from enrol.Lecturer A
inner join enrol.Department B on A.DepartmentID = B.DepartmentID
group by B.DepartmentID
order by B.DepartmentID;

-- l.	Display Count of Student, Country wise
select B.country, count(A.StudentID) as StudentCount
from enrol.Student A
inner join enrol.Address B on A.AddressID = B.AddressID
group by B.country
order by B.country;

----------------- Q12 Pragathi-------
--12 a.	Create new table StudCopy and copy all records from Student table

SELECT * INTO enrol.StudCopy FROM enrol.Student

SELECT * FROM enrol.StudCopy

-- 12 b.Create a new table DeptCopy and copy only the schema from Department table.

SELECT * INTO enrol.DeptCopy FROM enrol.Department WHERE 1=2

SELECT * FROM enrol.DeptCopy

--12 c.	Create a new table DepartmentCopy and copy all records from Department table.

SELECT * INTO enrol.DepartmentCopy FROM enrol.Department

SELECT * FROM enrol.DepartmentCopy

--12 d.	Create a new table AddrCopy and copy only the schema from Address table.

SELECT * INTO enrol.AddrCopy FROM enrol.Address WHERE 1=2

SELECT * FROM enrol.AddrCopy

--12 e.	Create a new table AddressCopy and copy all the records from Address table.

SELECT * INTO enrol.AddressCopy FROM enrol.Address

SELECT * FROM enrol.AddressCopy

--12 f.	Create a new table LecturerCopy and copy all the records from Lecturer table.

SELECT * INTO enrol.LecturerCopy FROM enrol.Lecturer

SELECT * FROM enrol.LecturerCopy


--- Q13 ----- Nishank ---- 
--Q13 part a

--Deleting all the entries from the lecturer table
DELETE FROM enrol.LecturerCopy;

--Q13 part b

--Deleting students with IT department
DELETE enrol.StudentCopy
WHERE DepartmentID = (SELECT DepartmentID
FROM enrol.Department
WHERE DepartmentName = 'IT')

SELECT * from enrol.StudentCopy


--Q13 part c
--Deleting Student information Country Indonesia
DELETE enrol.Student
FROM enrol.Student As T1
INNER JOIN enrol.Address As T2
ON T1.AddressID = T2.AddressID
AND T2.Country = 'Indonesia';


--Q13 part d
--Deleting Student information City Nanshi
DELETE enrol.StudentCopy
WHERE AddressID = (SELECT AddressID
FROM enrol.Address
WHERE City = 'Nanshi')



--Q13 part e
--Deleting Students with state Bretagne
DELETE enrol.StudentCopy
WHERE AddressID = (SELECT AddressID
FROM enrol.Address
WHERE State = 'Bretagne')

--------Q14 ------Lakshit
-- 14 a. Update StudentMobile for those students who belongs to Department �ME�.

UPDATE enrol.Student
SET StudentMobile = 123456789
WHERE DepartmentID = (SELECT DepartmentID
FROM enrol.Department
WHERE DepartmentName = 'ME')

-- 14 b. Update Student DepartmentID as 3, for the StudentID=42.

UPDATE enrol.Student
SET DepartmentID = 3
WHERE StudentID = 42;

--14 c. Update LecturerHighestQualification as �PHd� for the Lecturer whose LecturerHighestQualification= �PhD�.

UPDATE enrol.Lecturer
SET LecturerHighestQualification = 'PHd'
WHERE LecturerHighestQualification = 'PhD';

--14 d. Update PostalCode as �00000� for the Address which contain NULL as a PostalCode.

UPDATE enrol.Address
SET PostalCode = '00000'
WHERE PostalCode IS NULL;


--14  e. Update StudentLastName as �Paul� for the Student whose Name is �Jerry�

UPDATE enrol.Student
SET  StudentLastName = 'Paul'
WHERE StudentFirstName = 'Jerry';
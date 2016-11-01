-- DATABASE CREATION AND SELECTION

USE MASTER

CREATE DATABASE SQLLibraryDrill

USE SQLLibraryDrill

-- TABLE CREATION

CREATE TABLE SLDBook (
	BookID INT PRIMARY KEY,
	Title VARCHAR(50) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL,
	)
	GO

CREATE TABLE SLDPublisher (
	Name VARCHAR(50) PRIMARY KEY NOT NULL,
	Address VARCHAR(100) NOT NULL,
	Phone VARCHAR(15) NOT NULL,
	)
	GO

CREATE TABLE SLDBookAuthors (
	BookID INT PRIMARY KEY NOT NULL,
	AuthorName VARCHAR(50) NOT NULL,
	)
	GO

CREATE TABLE SLDLibrary_Branch (
	BranchID INT PRIMARY KEY NOT NULL,
	BranchName VARCHAR(30) NOT NULL,
	Address VARCHAR (50) NOT NULL,
	)
	GO

CREATE TABLE SLDBook_Copies (
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	No_Of_Copies INT NOT NULL,
	)
	GO

CREATE TABLE SLDBook_Loans (
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	CardNo INT NOT NULL,
	DateOut DATE NULL,
	DueDate DATE NULL,
	)
	GO

CREATE TABLE SLDBorrower (
	CardNo INT PRIMARY KEY NOT NULL,
	Name VARCHAR(30) NOT NULL,
	Address VARCHAR(100) NOT NULL,
	Phone VARCHAR(15) NOT NULL,
	)
	GO


--TABLE VALUE INSERTION

INSERT INTO SLDBook VALUES 
(1,'The Lost Tribe','QUEST Holdings'),
(2,'Round Tip','Diamond'),
(3,'The Desert God','Burning Bush'),
(4,'Foreign Miracles','Outer/Inner'),
(5,'Ancient Invocation','Smash Hammer'),
(6,'Weapon of a Noble','Katana Publishings'),
(7,'Four Contemplations','The Seasons'),
(8,'History of a Man','Genesis'),
(9,'Misery','Viking'),
(10,'The Longest Silence','Pitch Black'),
(11,'Diamonds and Blood','HARD Facts'),
(12,'Soaring Stones','Truth in Word'),
(13,'Voyager','Delta'),
(14,'VR Advanced','Future Forward'),
(15,'Mercy at the Gate','Revival'),
(16,'Trembling Rings','Destiny'),
(17,'Stagecoach','Wild West'),
(18,'The Ancient Archipelago','Lost N Found'),
(19,'Logic of the Heart','No Nonsense'),
(20,'My Little Bear','Down in the Bay')
GO

INSERT INTO SLDPublisher VALUES
('QUEST Holdings','4210 Umber Expressway, Aiea, Pennsylvania, 18212','736-867-8256'),
('Diamond','5368 Sunny Island Farms, Ocean Vue, Pennsylvania, 16756','234-829-8351'),
('Burning Bush','3088 Shady View Pike, Khoonkhwuttunne, Oregon, 97291','503-776-2297'),
('Outer/Inner','6959 Merry Autoroute, Hamma Hamma, Hawaii, 96752','827-224-8397'),
('Smash Hammer','8864 Dewy Ridge, Queens Chapel Manor, New Hampshire, 03290','298-348-8181'),
('Katana Publishings','8517 Quaking Row, Nugent, North Dakota, 58132','297-386-1237'),
('The Seasons','6770 Rocky Circuit, Red River City, North Dakota, 58182','298-369-8672'),
('Genesis','369 Heather Grove Towers, Boulevard Manor, Oklahoma, 74618','123-928-9683'),
('Viking','6294 Bright Diversion, Water Valley, Mississippi, 38697','928-798-4413'),
('Pitch Black','1313 Noble Rise Front, East Cambridge, Illinois, 61067','876-234-1672'),
('HARD Facts','1275 Round Dale, Zackville, North Dakota, 58230','822-390-7852'),
('Truth in Word','2810 Quiet Link, Minot, Nebraska, 68126','238-387-1968'),
('Delta','8599 Middle Gardens, Smoketown, Wyoming, 82684','928-191-2896'),
('Future Forward','845 Silver Goose Parade, Mann, Illinois, 62598','876-278-3427'),
('Revival','278 Cotton Boulevard, Pino, New Jersey, 08515','717-252-7623'),
('Destiny','7062 Colonial Log Pike, Austin, Nebraska, 68351','282-428-4824'),
('Wild West','1486 Amber Hills Line, Shores Of Calvert, Pennsylvania, 18644','928-374-1284'),
('Lost N Found','6531 Velvet Bank, Criders, Louisiana, 71488','298-483-8612'),
('No Nonsense','1072 Thunder Park, Powell Creek, South Carolina, 29120','163-276-3451'),
('Down in the Bay','840 Valencia, San Fransisco, CA, 94110','838-286-3871')
GO

INSERT INTO SLDBookAuthors Values
(1,'Donna Homes'),
(2,'Samuel Larson'),
(3,'Andre Medina'),
(4,'Edna Green'),
(5,'Jimmie Hanson'),
(6,'Daisy Bush'),
(7,'Katherine Tucker'),
(8,'Aaron Patrick'),
(9,'Stephen King'),
(10,'Freddie Meyer'),
(11,'Jo Marshal'),
(12,'Miguel Chapman'),
(13,'Eduardo Sanchez'),
(14,'Sonya Martell'),
(15,'Hattie Figeuroa'),
(16,'Grace McDaniel'),
(17,'Kelly Drake'),
(18,'Sergio Ortiz'),
(19,'Elmer Willis'),
(20,'Jessie Mason')
GO

INSERT INTO SLDLibrary_Branch VALUES
(101,'Sharpstown','1875 SW Park Ave, Portland, OR 97214'),
(102,'Hollywood','4040 NE Tillamook, Potland, OR 97213'),
(103,'Multnoma','6008 SE 49th St, Portland, OR 97213'),
(104,'Central','605 NE 15 Ave, Portland, OR 97224'),
(105,'Eliot','713 NE Vancouver St, Portland, OR 97213')
GO

INSERT INTO SLDBook_Copies VALUES
(1,101,2),
(1,102,2),
(1,103,4),
(2,102,6),
(2,103,3),
(2,104,2),
(3,103,3),
(3,104,2),
(3,105,5),
(4,104,2),
(4,105,4),
(4,101,3),
(5,104,2),
(5,105,6),
(5,101,3),
(6,102,4),
(6,103,8),
(6,104,2),
(7,104,5),
(7,102,2),
(8,102,3),
(8,101,4),
(9,102,6),
(9,105,4),
(9,103,2),
(10,101,7),
(10,102,3),
(10,104,3),
(11,103,5),
(11,105,2),
(12,102,4),
(12,103,3),
(12,101,2),
(12,105,2),
(13,104,8),
(13,105,3),
(14,103,2),
(14,101,4),
(15,105,10),
(15,102,3),
(15,104,3),
(16,102,7),
(16,105,3),
(16,103,5),
(17,103,4),
(17,101,3),
(17,105,2),
(18,104,6),
(18,102,2),
(18,101,6),
(19,101,2),
(19,102,4),
(20,102,4),
(20,101,3),
(20,103,5)
GO


BEGIN TRAN

INSERT INTO SLDBook_Loans VALUES 
(1,101,1001,'2016-09-01','2016-09-08'),
(1,101,1002,'2016-09-01','2016-09-08'),
(1,102,1003,'2016-08-07','2016-08-14'),
(2,102,1004,'2016-09-11','2016-09-18'),
(2,103,1005,'2016-09-12','2016-09-19'),
(2,103,1006,'2016-08-27','2016-09-04'),
(2,104,1007,'2016-09-03','2016-09-10'),
(3,103,1008,'2016-09-05','2016-09-12'),
(3,103,1001,'2016-09-05','2016-09-12'),
(3,105,1002,'2016-08-06','2016-08-13'),
(3,105,1003,'2016-09-03','2016-09-10'),
(4,104,1004,'2016-09-04','2016-09-11'),
(4,105,1005,'2016-08-09','2016-08-16'),
(4,101,1006,'2016-09-03','2016-09-10'),
(5,105,1007,'2016-08-30','2016-09-07'),
(5,105,1008,'2016-09-04','2016-09-11'),
(5,105,1009,'2016-08-30','2016-09-07'),
(6,101,1010,'2016-09-04','2016-09-11'),
(6,102,1001,'2016-09-02','2016-09-09'),
(6,103,1002,'2016-08-27','2016-09-03'),
(6,103,1003,'2016-08-28','2016-09-05'),
(7,104,1009,'2016-09-01','2016-09-08'),
(7,104,1007,'2016-09-01','2016-09-08'),
(7,102,1006,'2016-09-02','2016-09-09'),
(8,102,1005,'2016-09-03','2016-09-10'),
(8,101,1004,'2016-09-04','2016-09-11'),
(9,102,1003,'2016-09-05','2016-09-12'),
(9,105,1007,'2016-09-06','2016-09-13'),
(9,103,1001,'2016-09-07','2016-09-14'),
(10,101,1009,'2016-09-08','2016-09-15'),
(10,102,1010,'2016-09-01','2016-09-08'),
(11,103,1010,'2016-09-09','2016-09-16'),
(11,105,1002,'2016-09-11','2016-09-18'),
(11,105,1004,'2016-09-10','2016-09-17'),
(12,102,1005,'2016-09-09','2016-09-16'),
(12,103,1008,'2016-09-08','2016-09-15'),
(12,105,1002,'2016-09-06','2016-09-13'),
(13,104,1001,'2016-09-05','2016-09-12'),
(13,105,1007,'2016-09-02','2016-09-09'),
(14,103,1006,'2016-09-03','2016-09-10'),
(14,101,1009,'2016-09-01','2016-09-16'),
(15,105,1010,'2016-09-05','2016-09-12'),
(15,105,1002,'2016-09-08','2016-09-15'),
(15,105,1004,'2016-09-03','2016-09-10'),
(16,103,1003,'2016-09-01','2016-09-08'),
(17,105,1001,'2016-09-02','2016-09-09'),
(18,104,1008,'2016-09-03','2016-09-10'),
(18,102,1009,'2016-09-04','2016-09-11'),
(19,101,1010,'2016-09-05','2016-09-12'),
(20,102,1005,'2016-09-06','2016-09-13')

COMMIT TRAN

--WAITFOR DELAY '00:00:30'

--ROLLBACK




INSERT INTO SLDBorrower VALUES
(1001,'Chelsea Riley','2325 Little Creek Pathway, Providence, Massachusetts, 01108','502-839-4652'),
(1002,'Edward Mansanerez','3254 Sleepy Timber Hollow, East Farmersville, Virginia, 24154','924-123-4402'),
(1003,'Teddy Sugarwell','3644 Cinder Heights, Bassinger Corner, Ohio, 44602','737-462-8379'),
(1004,'Jake George','8958 Velvet Landing, Fountainville, Washington, 98720','813-262-8698'),
(1005,'Katie Dalla','1390 Tawny Private, Highland Mills, Washington, 98168','826-129-9397'),
(1006,'Missy Watt','8727 Easy Point, Cynthia, Georgia, 39805','139-279-3921'),
(1007,'Gordon Parker','6900 Rocky Towers, Martin Lake, Maryland, 21446','847-524-3812'),
(1008,'Lindsey Smart','2273 Dewy Autumn Thicket, East Northport, California, 90738','826-469-2525'),
(1009,'Miguel Pomares','2432 Fort St, East Tigard, OR, 97224','212-839-2836'),
(1010,'David McMahon','72734 Studio Way, Kensington, FL, 38268','372-348-2874'),
(1011,'Michael Davids','9694 Alsea Dr, Wilsonville, OR, 97317','503-842-4324')
GO

TRUNCATE TABLE SLDBorrower

--TABLE SELECTION

SELECT *
FROM SLDBook

SELECT *
FROM SLDPublisher

SELECT *
FROM SLDBookAuthors

SELECT *
FROM SLDLibrary_Branch

SELECT *
FROM SLDBook_Copies

SELECT *
FROM SLDBook_Loans
WHERE BranchID = 104

SELECT *
FROM SLDBorrower



-- ASSIGNMENT QUERIES 

--Query 1
SELECT 
	SBK.Title,
	SLB.BranchName,
	SBC.No_Of_Copies
FROM SLDBook AS SBK
	JOIN SLDBook_Copies AS SBC
		ON SBK.BookID = SBC.BookID
	JOIN SLDLibrary_Branch AS SLB
		ON SBC.BranchID = SLB.BranchID
WHERE SLB.BranchName = 'Sharpstown'
AND SBK.Title = 'The Lost Tribe'


--Query 2
SELECT 
	SBK.Title,
	SLB.BranchName,
	SBC.No_Of_Copies
FROM SLDBook AS SBK
	JOIN SLDBook_Copies AS SBC
		ON SBK.BookID = SBC.BookID
	JOIN SLDLibrary_Branch AS SLB
		ON SBC.BranchID = SLB.BranchID
WHERE SBK.Title = 'The Lost Tribe'


--Query 3

SELECT *
FROM SLDBorrower AS SBR 
	LEFT JOIN SLDBook_Loans AS SBL
		ON SBL.CardNo = SBR.CardNo
EXCEPT 
SELECT *
FROM SLDBorrower AS SBR1
	JOIN SLDBook_Loans AS SBL1
		ON SBL1.CardNo = SBR1.CardNo


SELECT SBR.Name
FROM SLDBorrower AS SBR 
	--LEFT JOIN SLDBook_Loans AS SBL
		--ON SBL.CardNo = SBR.CardNo
EXCEPT 
SELECT SBR1.Name
FROM SLDBorrower AS SBR1
	JOIN SLDBook_Loans AS SBL1
		ON SBL1.CardNo = SBR1.CardNo

--Query 4
SELECT 
	SBK.Title,
	SBR.Name,
	SBR.Address
FROM SLDBook AS SBK
	JOIN SLDBook_Loans AS SBL
		ON SBK.BookID = SBL.BookID
	JOIN SLDLibrary_Branch AS SLB
		ON SBL.BranchID = SLB.BranchID
	JOIN SLDBorrower AS SBR
		ON SBL.CardNo = SBR.CardNo
WHERE SLB.BranchName = 'Sharpstown'
AND SBL.DueDate = '2016.09.12'


--Query 5

SELECT 
	SLB.BranchName,	
	(SELECT COUNT(*)
		FROM SLDBook_Loans AS SBL
		WHERE SBL.BranchID = SLB.BranchId) AS 'Book Count'
FROM SLDLibrary_Branch AS SLB
	
--Query 6

SELECT 
	SBR.Name,
	SBR.Address,
	(SELECT COUNT(*)
		FROM SLDBook_Loans AS SBL
		WHERE SBL.CardNo = SBR.CardNo) AS 'Books Checked Out'
FROM SLDBorrower AS SBR
	WHERE (SELECT COUNT(*)
		FROM SLDBook_Loans AS SBL
		WHERE SBL.CardNo = SBR.CardNo) > 5

--Query 7

SELECT 
	SBK.Title,
	SBC.No_Of_Copies	
FROM SLDBook AS SBK
	JOIN SLDBook_Copies AS SBC
		ON SBK.BookID = SBC.BookID
	JOIN SLDBookAuthors AS SBA
		ON SBK.BookID = SBA.BookID
	JOIN SLDLibrary_Branch AS SLB
		ON SBC.BranchID = SLB.BranchID
WHERE SBA.AuthorName = 'Stephen King'
AND SLB.BranchName = 'Central'

--CREATE PROCEDURE AuthorAtLibrary @AuthorName VARCHAR(30), @LibraryBranch VARCHAR(30)
SELECT 
	SBK.Title,
	SBC.No_Of_Copies	
FROM SLDBook AS SBK
	JOIN SLDBook_Copies AS SBC
		ON SBK.BookID = SBC.BookID
	JOIN SLDBookAuthors AS SBA
		ON SBK.BookID = SBA.BookID
	JOIN SLDLibrary_Branch AS SLB
		ON SBC.BranchID = SLB.BranchID
WHERE SBA.AuthorName = @AuthorName
AND SLB.BranchName = @LibraryBranch
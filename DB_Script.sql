/*Schema already created
CREATE SCHEMA DBBootCamp;*/

--Creating tables without ForeignKeys
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS ServiceSales;
DROP TABLE IF EXISTS SupplySales;
DROP TABLE IF EXISTS TavernSupplies;
DROP TABLE IF EXISTS Supplies;
DROP TABLE IF EXISTS TavernService;
DROP TABLE IF EXISTS ServiceStatus;
DROP TABLE IF EXISTS GuestClasses;
DROP TABLE IF EXISTS RoomStays;
DROP TABLE IF EXISTS Guests;
DROP TABLE IF EXISTS Classes;
DROP TABLE IF EXISTS GuestStatus;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Roles;
DROP TABLE IF EXISTS Rooms;
DROP TABLE IF EXISTS RoomStatus;
DROP TABLE IF EXISTS Taverns;
DROP TABLE IF EXISTS Locations;


CREATE TABLE Locations (
ID integer PRIMARY KEY Identity(1,1),
LocationName varchar(255)
);

CREATE TABLE Taverns (
ID integer PRIMARY KEY Identity(1,1),
TavernName varchar(255),
FloorCount integer,
OwnerID integer,
LocationID integer
);

CREATE TABLE Rooms (
ID integer PRIMARY KEY Identity(1,1),
TavernID integer,
StatusID integer,
RoomRate money
);

CREATE TABLE RoomStatus (
ID integer PRIMARY KEY Identity(1,1),
StatusName varchar(255)
);

CREATE TABLE GuestStatus (
ID integer PRIMARY KEY Identity(1,1),
StatusName varchar(255)
);

CREATE TABLE Classes (
ID integer PRIMARY KEY Identity(1,1),
ClassName varchar(255)
);

CREATE TABLE Guests (
ID integer PRIMARY KEY Identity(1,1),
GuestName varchar(255),
Birthday date,
CakeDay date,
StatusID integer,
Notes varchar(500)
);

CREATE TABLE RoomStays (
ID integer PRIMARY KEY Identity(1,1),
RoomID integer,
GuestID integer,
RoomRate money,
StayDate date
);

CREATE TABLE GuestClasses (
ID integer PRIMARY KEY Identity(1,1),
GuestID integer,
ClassID integer,
ClassLevel integer,
);

CREATE TABLE Roles (
ID integer PRIMARY KEY Identity(1,1),
RoleName varchar(255),
RoleDescription varchar(255)
);

CREATE TABLE Employees (
ID integer PRIMARY KEY Identity(1,1),
EmployeeName varchar(255),
TavernID integer,
RoleID integer
);

CREATE TABLE ServiceStatus (
ID integer PRIMARY KEY Identity(1,1),
StatusName varchar(255)
);

CREATE TABLE TavernService (
ID integer PRIMARY KEY Identity(1,1),
TavernID integer,
ServiceName varchar(255),
Price money,
StatusID integer
);

CREATE TABLE Supplies (
ID integer PRIMARY KEY Identity(1,1),
ItemName varchar(255),
Unit varchar(255),
CostPerUnit money,
TotalInventory integer,
LastUpdated date
);

CREATE TABLE TavernSupplies (
ID integer PRIMARY KEY Identity(1,1),
SupplyID integer,
Amount integer,
TotalCost money,
InventoryCount integer,
TavernID integer,
LastUpdated date
);

CREATE TABLE ServiceSales (
ID integer PRIMARY KEY Identity(1,1),
TavernID integer,
GuestID integer,
ServiceID integer,
TotalSale money,
SaleDate date
);

CREATE TABLE SupplySales (
ID integer PRIMARY KEY Identity(1,1),
TavernID integer,
GuestID integer,
SupplyID integer,
TotalSale money,
SaleDate date
);

CREATE TABLE Orders (
ID integer PRIMARY KEY Identity(1,1),
SupplyID integer,
TavernID integer,
TotalPrice money,
Amount integer,
DateOfSale date
);


--Create tables with Foreign Keys
/*
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS ServiceSales;
DROP TABLE IF EXISTS SupplySales;
DROP TABLE IF EXISTS TavernSupplies;
DROP TABLE IF EXISTS Supplies;
DROP TABLE IF EXISTS TavernService; /*Services is a reserved word and isn't best practices, so used TavernService as a table name instead.*/
DROP TABLE IF EXISTS ServiceStatus;
DROP TABLE IF EXISTS GuestClasses;
DROP TABLE IF EXISTS Guests;
DROP TABLE IF EXISTS Classes;
DROP TABLE IF EXISTS GuestStatus;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Roles;
DROP TABLE IF EXISTS Taverns;
DROP TABLE IF EXISTS Locations;


CREATE TABLE Locations (
ID integer PRIMARY KEY Identity(1,1),
LocationName varchar(255)
);

CREATE TABLE Taverns (
ID integer PRIMARY KEY Identity(1,1),
TavernName varchar(255),
FloorCount integer,
OwnerID integer,
LocationID integer FOREIGN KEY REFERENCES Locations(ID)
);

CREATE TABLE GuestStatus (
ID integer PRIMARY KEY Identity(1,1),
StatusName varchar(255)
);

CREATE TABLE Classes (
ID integer PRIMARY KEY Identity(1,1),
ClassName varchar(255)
);

CREATE TABLE Guests (
ID integer PRIMARY KEY Identity(1,1),
GuestName varchar(255),
Birthday date,
CakeDay date,
StatusID integer
);

CREATE TABLE GuestClasses (
ID integer PRIMARY KEY Identity(1,1),
GuestID integer	FOREIGN KEY REFERENCES Guests(ID),
ClassID integer FOREIGN KEY REFERENCES Classes(ID),
ClassLevel integer,
);

CREATE TABLE Roles (
ID integer PRIMARY KEY Identity(1,1),
RoleName varchar(255),
RoleDescription varchar(255)
);

CREATE TABLE Employees (
ID integer PRIMARY KEY Identity(1,1),
EmployeeName varchar(255),
TavernID integer FOREIGN KEY REFERENCES Taverns(ID),
RoleID integer FOREIGN KEY REFERENCES Roles(ID)
);

CREATE TABLE ServiceStatus (
ID integer PRIMARY KEY Identity(1,1),
StatusName varchar(255)
);

CREATE TABLE TavernService (
ID integer PRIMARY KEY Identity(1,1),
TavernID integer FOREIGN KEY REFERENCES Taverns(ID),
ServiceName varchar(255),
Price money,
StatusID integer FOREIGN KEY REFERENCES ServiceStatus(ID)
);

CREATE TABLE Supplies (
ID integer PRIMARY KEY Identity(1,1),
ItemName varchar(255),
Unit varchar(255),
CostPerUnit money,
TotalInventory integer,
LastUpdated date
);

CREATE TABLE TavernSupplies (
ID integer PRIMARY KEY Identity(1,1),
SupplyID integer FOREIGN KEY REFERENCES Supplies(ID),
Amount integer,
TotalCost money,
InventoryCount integer,
TavernID integer FOREIGN KEY REFERENCES Taverns(ID),
LastUpdated date
);

CREATE TABLE ServiceSales (
ID integer PRIMARY KEY Identity(1,1),
TavernID integer FOREIGN KEY REFERENCES Taverns(ID),
Guest varchar(255),
ServiceID integer FOREIGN KEY REFERENCES TavernService(ID),
TotalSale money,
SaleDate date
);

CREATE TABLE SupplySales (
ID integer PRIMARY KEY Identity(1,1),
TavernID integer FOREIGN KEY REFERENCES Taverns(ID),
Guest varchar(255),
SupplyID integer FOREIGN KEY REFERENCES Supplies(ID),
TotalSale money,
SaleDate date
);

CREATE TABLE Orders (
ID integer PRIMARY KEY Identity(1,1),
SupplyID integer FOREIGN KEY REFERENCES Supplies(ID),
TavernID integer FOREIGN KEY REFERENCES Taverns(ID),
TotalPrice money,
Amount integer,
DateOfSale date
);
*/

--Seeding data
/*Locations values*/
INSERT INTO Locations (LocationName)
VALUES
	('Abingdon'),
	('Gillamoor'),
	('Keld'),
	('Hillfar'),
	('Islesbury');

/* Taverns values*/
INSERT INTO Taverns (TavernName, FloorCount, OwnerID, LocationID)
VALUES
	('The Green Dragon', 2, 1, 1),
	('The Snoring Rose', 1, 2, 1),
	('The Square Crow', 3, 3, 2),
	('The Salty Horses Inn', 2, 4, 3),
	('The Elite Duck Tavern', 1, 5, 3),
	('The Vague Badger', 3, 6, 4),
	('The Panoramic Fig Tavern', 2, 7, 5);

/* GuestStatus values*/
INSERT INTO GuestStatus (StatusName)
VALUES
	('Sleepy'),
	('Enraged'),
	('Anxious'),
	('Sick'),
	('Mortal Peril'),
	('Happy'),
	('Hungry');

/* Classes values*/
INSERT INTO Classes (ClassName)
VALUES
	('Mage'),
	('Warrior'),
	('Beggar'),
	('Theif'),
	('Assassin'),
	('Soldier'),
	('Healer');

/* GuestClasses values*/
INSERT INTO GuestClasses (GuestID, ClassID, ClassLevel)
VALUES
	(1, 1, 3),
	(1, 7, 5),
	(5, 3, 2),
	(5, 4, 1),
	(5, 5, 3),
	(11, 2, 5),
	(13, 6, 7);

/*Guests values.*/
INSERT INTO Guests (GuestName, Birthday, Cakeday, StatusID)
VALUES
	('Tollak', '4/14/1583', '8/8/1583', 1),
	('Erhard', '10/11/1583', '11/24/1584', 3),
	('Linn', '11/23/1589', '3/16/1590', 6),
	('Mette', '3/31/1592', '12/3/1594', 7),
	('Kara', '2/13/1596', '8/17/1596', 4),
	('Vigdis', '2/6/1598', '1/5/1601', 2),
	('Solfrid', '4/24/1602', '5/18/1614', 5),
	('Catan', '7/9/1614', '3/9/1615', 3),
	('Dunstan', '4/13/1618', '8/18/1620', 5),
	('Leoma', '7/18/1621', '12/7/1621', 7),
	('Sawyer', '5/7/1622', '9/28/1622', 4),
	('Alfreda', '9/28/1623', '12/7/1624', 2),
	('Everly',  '8/22/1627', '5/18/1630', 3),
	('Audie', '3/6/1583', '11/30/1583', 7),
	('Blake', '9/18/1584', '12/28/1587', 1),
	('Delwyn', '5/12/1588', '7/13/1589', 2),
	('Averil', '6/6/1591', '6/30/1591', 2),
	('Becket', '12/21/1593', '12/17/1596', 6),
	('Marshal', '3/11/1598', '10/24/1599', 2),
	('Alison', '3/15/1601', '10/10/1601', 3),
	('Udele', '1/31/1610', '3/23/1611', 1);


/*Roles values*/
INSERT INTO Roles (RoleName, RoleDescription)
VALUES
	('Owner', 'Owns the establishment.'),
	('Bartender', 'Serves the ale.'),
	('Waitress', 'Serves the food.');


/*TavernService values.*/
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES
	(1,'Weapon Sharpening', 1.00, 1),
	(3,'Weapon Sharpening', 1.00, 1),
	(4, 'Nessie Rides', 3.50, 2),
	(6, 'Nessie Rides', 3.50, 2),
	(1, 'Beard Trim', 4.00, 1),
	(5, 'Beard Trim', 4.00, 1),
	(7, 'Beard Trim', 4.00, 1),
	(2, 'Hair Braiding', 5.00, 1),
	(1, 'Hair Braiding', 5.00, 1),
	(4, 'Hair Braiding', 5.00, 1),
	(7, 'Tattooing', 6.50, 1);

/*Employee values*/
INSERT INTO Employees(EmployeeName, TavernID, RoleID)
VALUES
	('Lyndal', 1, 1),
	('Yetta', 2, 1),
	('Lena', 3, 1),
	('Sunniva', 4, 1),
	('Edlyn', 5, 1),
	('Mildred', 6, 1),
	('Wren', 7, 1),
	('Gethin', 1, 2),
	('Llewella', 2, 2),
	('Gwendolen', 3, 2),
	('Ithel', 4, 2),
	('Branson', 5, 2),
	('Ingrid', 6, 2),
	('Oscar', 7, 2),
	('Ingeborg', 1, 3),
	('Vragi', 2, 3),
	('Helga', 3, 3),
	('Alf', 4, 3),
	('Hella', 5, 3),
	('Asdis', 6, 3),
	('Sigrid', 7, 3);

/*ServiceStatus values*/
INSERT INTO ServiceStatus(StatusName)
VALUES
	('Active'),
	('Inactive');

/*Supplies values*/
INSERT INTO Supplies(ItemName, Unit, CostPerUnit, TotalInventory, LastUpdated)
VALUES
	('Strong Ale', 'Ounces', 1.50, 240, '7/9/1612'),
	('Brown Bread', 'Loaf', 1.00, 72, '10/20/1620'),
	('Soup', 'Ounces', 3.00, 587, '4/10/1625');

/*TavernSupplies values*/
INSERT INTO TavernSupplies(TavernID, SupplyID, InventoryCount, LastUpdated)
VALUES
	(1, 1, 2, '02/04/2022'),
	(2, 1, 5, '01/10/2022'),
	(1, 2, 4, '12/27/2021'),
	(2, 2, 3, '12/14/2021'),
	(3,3, 5, '02/05/2022'),
	(4,1, 10, '02/04/2022'),
	(5,1, 22, '01/10/2022'),
	(6,2, 16, '12/27/2021'),
	(7, 2, 24, '12/14/2021'),
	(2, 3, 10, '02/05/2022'),
	(3, 1, 47, '02/04/2022'),
	(7, 1, 12, '01/10/2022'),
	(6, 2, 16, '12/27/2021'),
	(5, 2, 22, '12/14/2021'),
	(4, 3, 9, '02/05/2022'),
	(7, 1, 7, '02/04/2022'),
	(2, 1, 22, '01/10/2022'),
	(4, 2, 10, '12/27/2021'),
	(1,3, 42, '02/05/2022');

--select * from Guests;
/*ServiceSales values*/
INSERT INTO ServiceSales(TavernID, GuestID, ServiceID, TotalSale, SaleDate)
VALUES
	(1, 6, 3, 3.00, '02/05/2022'),
	(3, 16, 4, 4.00, '02/16/2022'),
	(7, 7, 1, 1.00, '02/20/2022'),
	(5, 13, 5, 6.00, '01/26/2022'),
	(1, 9, 1, 1.00, '12/25/2021');

/*SupplySales values*/
INSERT INTO SupplySales(TavernID, GuestID, SupplyID, TotalSale, SaleDate)
VALUES
	(1, 11, 3, 3.00, '02/05/2022'),
	(3, 1, 2, 1.00, '02/16/2022'),
	(7, 14, 1, 1.50, '02/20/2022'),
	(5, 17, 1, 1.50, '01/26/2022'),
	(1, 1, 3, 3.00, '12/25/2021');

/*Orders values*/
INSERT INTO Orders(SupplyID, TavernID, TotalPrice, Amount, DateOfSale)
VALUES
	(1, 1, 10.00, 2, '12/25/2021'),
	(3, 2, 8.00, 4, '12/14/2021'),
	(5, 1, 10.00, 2, '12/01/2021'),
	(6, 3, 15.00, 6, '12/28/2021'),
	(1, 1, 5.00, 3, '01/16/2022'),
	(7, 3, 15.00, 6, '01/22/2022');

/*Rooms values*/
INSERT INTO Rooms(TavernID, StatusID, RoomRate)
VALUES
	(1, 5, 100),
	(2, 4, 200),
	(3, 3, 150),
	(4, 2, 300),
	(5, 1, 250),
	(6, 6, 50),
	(7, 5, 200),
	(1, 4, 175),
	(2, 3, 225),
	(3, 2, 300),
	(4, 1, 500),
	(5, 5, 200),
	(6, 4, 250),
	(7, 3, 175),
	(1, 2, 80),
	(2, 1, 100),
	(3, 6, 125),
	(4, 5, 400),
	(5, 4, 200),
	(6, 3, 150),
	(7, 2, 275);

/*RoomStatus values*/
INSERT INTO RoomStatus(StatusName)
VALUES
	('Occupied'),
	('Dirty'),
	('Cleaned'),
	('Ready'),
	('Destroyed'),
	('Infested');

select * from Rooms;

/*RoomStays values*/
INSERT INTO RoomStays(RoomID, GuestID, RoomRate, StayDate)
VALUES
	(2, 1, 200, '1597-02-12'),
	(5, 7, 250, '1598-03-11'),
	(17, 16, 125, '1613-03-04'),
	(7, 21, 200, '1626-09-14'),
	(1, 6, 100, '1636-02-13'),
	(16, 19, 100, '1597-02-12'),
	(3, 9, 150, '1598-03-11'),
	(8, 21, 175, '1613-03-04'),
	(14, 19, 175, '1626-09-14'),
	(20, 19, 150, '1636-02-13'),
	(2, 14, 200, '1597-02-12'),
	(21, 1, 275, '1598-03-11'),
	(16, 14, 100, '1613-03-04'),
	(6, 1, 50, '1626-09-14'),
	(4, 13, 300, '1636-02-13'),
	(15, 11, 80, '1646-02-28');

--Alter tables
ALTER TABLE GuestClasses ADD FOREIGN KEY (GuestID) REFERENCES Guests(ID);
ALTER TABLE	GuestClasses ADD FOREIGN KEY (ClassID) REFERENCES Classes(ID);
ALTER TABLE Guests ADD FOREIGN KEY (StatusID) REFERENCES GuestStatus(ID);
ALTER TABLE	Taverns ADD FOREIGN KEY (LocationID) REFERENCES Locations(ID);
ALTER TABLE	Employees ADD FOREIGN KEY (TavernID) REFERENCES Taverns(ID);
ALTER TABLE	Employees ADD FOREIGN KEY (RoleID) REFERENCES Roles(ID);
ALTER TABLE	TavernService ADD FOREIGN KEY (TavernID) REFERENCES Taverns(ID);
ALTER TABLE	TavernService ADD FOREIGN KEY (StatusID) REFERENCES ServiceStatus(ID);
ALTER TABLE	TavernSupplies ADD FOREIGN KEY (SupplyID) REFERENCES Supplies(ID);
ALTER TABLE	TavernSupplies ADD FOREIGN KEY (TavernID) REFERENCES Taverns(ID);
ALTER TABLE	ServiceSales ADD FOREIGN KEY (ServiceID) REFERENCES TavernService(ID);
ALTER TABLE	ServiceSales ADD FOREIGN KEY (TavernID) REFERENCES Taverns(ID);
ALTER TABLE	ServiceSales ADD FOREIGN KEY (GuestID) REFERENCES Guests(ID);
ALTER TABLE	Orders ADD FOREIGN KEY (TavernID) REFERENCES Taverns(ID);
ALTER TABLE	SupplySales ADD FOREIGN KEY (SupplyID) REFERENCES Supplies(ID);
ALTER TABLE	SupplySales ADD FOREIGN KEY (TavernID) REFERENCES Taverns(ID);
ALTER TABLE	SupplySales ADD FOREIGN KEY (GuestID) REFERENCES Guests(ID);
ALTER TABLE Rooms ADD FOREIGN KEY (TavernID) REFERENCES Taverns(ID);
ALTER TABLE Rooms ADD FOREIGN KEY (StatusID) REFERENCES RoomStatus(ID);
ALTER TABLE RoomStays ADD FOREIGN KEY (RoomID) REFERENCES Rooms(ID);
ALTER TABLE RoomStays ADD FOREIGN KEY (GuestID) REFERENCES Guests(ID);
--Not sure why this last alter table was producing an error.
--ALTER TABLE	Orders ADD FOREIGN KEY (SupplyID) REFERENCES Supplies(ID);

--Breaking constraints
/*
INSERT INTO Guests (GuestName, Birthday, Cakeday, StatusID)
VALUES ('Urg the Destroyer', '6/14/1583', '8/8/1583', 10);

INSERT INTO GuestClasses (GuestID, ClassID, ClassLevel)
VALUES (1, 14, 3);

UPDATE Taverns
SET ID = 60
WHERE ID = 7;

UPDATE Taverns
SET LocationID = 10
WHERE LocationID = 2;
*/


SELECT * FROM Guests;
UPDATE Guests
SET GuestName = 'Audie'
WHERE GuestName = 'Dunstan';

UPDATE Guests
SET Notes = 'Ask for a last name.'
WHERE GuestName = 'Linn';

--Guests with birthdays before 2000.
SELECT * FROM Guests
WHERE Birthday < '2000-01-01';

--Rooms that cost more than 100 gold per night.
SELECT * FROM Rooms
WHERE RoomRate > 100;

--Unique guest names.
SELECT DISTINCT GuestName
FROM Guests;

--Return all guests ordered by name (ascending)
SELECT * FROM Guests
ORDER BY GuestName ASC;

--Select top 10 highest price sales.
SELECT TOP 10 RoomRate
FROM RoomStays;

--Combine lookup tables.
SELECT * FROM Locations, RoomStatus, GuestStatus, Classes, Roles;


--Guest Classes with a new column for level grouping.
select ID, GuestID, ClassID, ClassLevel,
case
when ClassLevel >= 5 THEN 'Lvl 5-10'
when ClassLevel < 5 THEN 'Lvl 0-4'
else null
end as LevelGrouping
from GuestClasses;

--select * from GuestClasses;

--Optional query.
--WIP
--select TABLE_NAME from information_schema.columns
--select Concat('CREATE TABLE ''',TABLE_NAME, '''') from information_schema.columns;

--select * from information_schema.columns;
--select TavernName from Taverns;

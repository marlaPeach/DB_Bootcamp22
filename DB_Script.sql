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
	(1, 1, 53),
	(1, 7, 9),
	(5, 3, 38),
	(5, 4, 19),
	(11, 5, 42),
	(11, 2, 46),
	(1, 1, 23),
	(17, 4, 24),
	(6, 7, 25),
	(3, 2, 22),
	(12, 4, 31),
	(21, 1, 37),
	(3, 5, 21),
	(13, 6, 35),
	(18, 5, 32),
	(8, 1, 8),
	(9, 6, 1),
	(7, 3, 11),
	(21, 2, 54),
	(16, 4, 42),
	(2, 1, 41),
	(8, 6, 24),
	(15, 3, 17),
	(5, 7, 47),
	(16, 1, 21),
	(4, 5, 20),
	(19, 6, 3),
	(4, 5, 51);


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
	('Strong Ale', 'Ounces', 1.50, 240, '07/9/1612'),
	('Brown Bread', 'Loaf', 1.00, 72, '10/20/1620'),
	('Soup', 'Ounces', 3.00, 587, '04/10/1625'),
	('Pipe Tobacco', 'Ounces', 2.50, 240, '02/08/1601'),
	('Beard Oil', 'Ounces', 1.00, 72, '07/07/1605'),
	('Hairbands', 'Band', 1.50, 240, '05/06/1608'),
	('Beef Jerky', 'Ounces', 6.00, 72, '10/11/1609');

/*TavernSupplies values*/
INSERT INTO TavernSupplies(TavernID, SupplyID, InventoryCount, LastUpdated)
VALUES
	(1, 1, 2, '02/04/1599'),
	(2, 1, 5, '11/02/1604'),
	(1, 2, 4, '09/08/1601'),
	(2, 2, 3, '12/02/1608'),
	(3,3, 5, '07/11/1610'),
	(4,1, 10, '11/01/1611'),
	(5,1, 22, '08/07/1611'),
	(6,2, 16, '10/08/1597'),
	(7, 2, 24, '11/09/1597'),
	(2, 3, 10, '11/01/1598'),
	(3, 1, 47, '10/05/1599'),
	(7, 1, 12, '11/05/1600'),
	(6, 2, 16, '03/09/1600'),
	(5, 2, 22, '03/01/1602'),
	(4, 3, 9, '03/07/1610'),
	(7, 1, 7, '07/08/1611'),
	(2, 1, 22, '02/01/1603'),
	(4, 2, 10, '01/04/1603'),
	(1,3, 42, '08/02/1604');

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
	(1, 11, 3, 3.00, '12/02/1599'),
	(3, 1, 2, 1.00, '08/01/1600'),
	(7, 14, 1, 1.50, '12/02/1600'),
	(5, 17, 1, 1.50, '12/06/1601'),
	(3, 13, 7, 6.00, '11/01/1602'),
	(1, 1, 6, 1.50, '10/04/1602'),
	(7, 16, 4, 2.50, '07/08/1602'),
	(2, 15, 2, 1.00, '02/05/1603'),
	(3, 16, 5, 1.00, '12/06/1603'),
	(6, 5, 4, 2.50, '02/06/1604'),
	(3, 6, 7, 6.00, '03/07/1604'),
	(2, 9, 2, 1.00, '03/02/1605'),
	(3, 8, 6, 1.50, '12/11/1606'),
	(4, 9, 7, 6.00, '12/05/1607'),
	(3, 21, 4, 2.50, '08/06/1607'),
	(2, 3, 7, 6.00, '01/08/1607'),
	(4, 5, 2, 1.00, '12/05/1608'),
	(1, 1, 3, 3.00, '12/25/2021');

/*Orders values*/
INSERT INTO Orders(SupplyID, TavernID, TotalPrice, Amount, DateOfSale)
VALUES
	(1, 1, 10.00, 2, '06/07/1610'),
	(3, 2, 8.00, 4, '12/06/1611'),
	(5, 1, 10.00, 2, '12/06/1611'),
	(6, 3, 15.00, 6, '10/04/1602'),
	(1, 1, 5.00, 3, '12/06/1603'),
	(7, 3, 15.00, 6, '08/06/1607');

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

/*RoomStays values*/
INSERT INTO RoomStays(RoomID, GuestID, RoomRate, StayDate)
VALUES
	(2, 1, 200, '12/02/1597'),
	(5, 7, 250, '11/03/1598'),
	(17, 16, 125, '04/03/1613'),
	(7, 21, 200, '12/09/1626'),
	(1, 6, 100, '12/02/1636'),
	(16, 19, 100, '12/02/1597'),
	(3, 9, 150, '11/03/1598'),
	(8, 21, 175, '04/03/1613'),
	(14, 19, 175, '12/09/1626'),
	(20, 19, 150, '12/02/1636'),
	(2, 14, 200, '12/02/1597'),
	(21, 1, 275, '11/03/1598'),
	(16, 14, 100, '04/03/1613'),
	(6, 1, 50, '12/09/1626'),
	(4, 13, 300, '12/02/1636'),
	(15, 11, 80, '02/02/1646');

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

----Guests with birthdays before 2000.
SELECT * FROM Guests
WHERE Birthday < '2000-01-01';

----Rooms that cost more than 100 gold per night.
SELECT * FROM Rooms
WHERE RoomRate > 100;

----Unique guest names.
SELECT DISTINCT GuestName
FROM Guests;

----Return all guests ordered by name (ascending)
SELECT * FROM Guests
ORDER BY GuestName ASC;

----Select top 10 highest price sales.
SELECT TOP 10 RoomRate
FROM RoomStays;

----Combine lookup tables.
SELECT * FROM Locations, RoomStatus, GuestStatus, Classes, Roles;


----Guest Classes with a new column for level grouping.
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


----Joins
----Join Guests, Levels, and Classes to get a result containing all guests, their classes, and their levels.
SELECT Guests.ID as GuestID, Guests.GuestName, Classes.ClassName, GuestClasses.ClassLevel as Level
FROM Guests
JOIN GuestClasses on Guests.ID = GuestClasses.GuestID
JOIN Classes on GuestClasses.ClassID = Classes.ID;



--Return users who have admin roles.
--select * from Roles;
--select * from Employees;
--select * from Taverns;
select * from Employees where RoleID = 1;

----Return users who have admin roles and information about their taverns.
select Employees.ID as EmployeeID, Employees.EmployeeName, Employees.TavernID as EmployeeTavernID, Employees.RoleID as EmployeeRoleID, Roles.RoleName as EmployeeRole, Taverns.ID as TavernID, Taverns.TavernName, Taverns.FloorCount as TavernFloors, Taverns.OwnerID, Taverns.LocationID
from Employees
join Taverns on Employees.TavernID = Taverns.ID
join Roles on Employees.RoleID = Roles.ID
where RoleID = 1;

----Return all guests ordered by name (asc) and their classes and corresponding levels.
select Guests.ID as GuestID, Guests.GuestName, Guests.Birthday, Guests.CakeDay, Guests.StatusID, GuestStatus.StatusName, Guests.Notes,  GuestClasses.ClassID as GuestClassID, Classes.ClassName, GuestClasses.ClassLevel
from Guests 
join GuestClasses on GuestClasses.GuestID = Guests.ID
join Classes on GuestClasses.ClassID = Classes.ID
join GuestStatus on Guests.StatusID = GuestStatus.ID
order by Guests.GuestName asc;

--Return the top 10 sales in terms of sales price and what the services were.
select * from SupplySales;
--Wait, is this really the top ten sales?
select top 10 SupplySales.TotalSale, SupplySales.ID as SaleID, SupplySales.TavernID, Taverns.TavernName, SupplySales.GuestID, Guests.GuestName, SupplySales.SupplyID, Supplies.ItemName, SupplySales.SaleDate
from SupplySales
join Guests on SupplySales.GuestID = Guests.ID
join Supplies on SupplySales.SupplyID = Supplies.ID
join Taverns on SupplySales.TavernID = Taverns.ID;

select top 10 SupplySales.TotalSale
from SupplySales;


----Return guests with 2 or more classes.
select Guests.ID, Guests.GuestName, Guests.Birthday, Guests.CakeDay, Guests.Notes, Guests.StatusID 
from Guests inner join GuestClasses on Guests.ID = GuestClasses.GuestID 
group by Guests.ID, Guests.GuestName, Guests.Birthday, Guests.CakeDay, Guests.Notes, Guests.StatusID 
having count(Guests.ID) > 1;

----Return guests with 2 or more classes with levels higher than 5.
select Guests.ID, Guests.GuestName, Guests.Birthday, Guests.CakeDay, Guests.Notes, Guests.StatusID
from Guests inner join GuestClasses on Guests.ID = GuestClasses.GuestID 
where GuestClasses.ClassLevel > 5
group by Guests.ID, Guests.GuestName, Guests.Birthday, Guests.CakeDay, Guests.Notes, Guests.StatusID
having count(Guests.ID) > 1;

----Return guests with ONLY their highest level class.
----Stuck
select g.GuestName, c.ClassName, MaxLevel.MaxLevel
from Guests as g
join GuestClasses as gc on gc.GuestID = g.ID
join
	(select gc2.GuestID, MAX(gc2.ClassLevel)as MaxLevel, gc2.ClassID
	from GuestClasses as gc2
	group by gc2.GuestID, gc2.ClassID) as MaxLevel on g.ID = MaxLevel.GuestID
join Classes as c on c.ID = MaxLevel.ClassID
group by g.GuestName, c.ClassName, MaxLevel.MaxLevel;

select g.GuestName, c.ClassName, max(gc.ClassLevel) as MaxLevel
from Guests as g
join GuestClasses as gc on g.ID = gc.GuestID
join Classes as c on c.ID = gc.ClassID
group by g.ID, g.GuestName, c.ClassName;

select g.GuestName, gc.ClassLevel, c.ClassName from Guests g
join GuestClasses gc on g.ID = gc.GuestID
join Classes c on c.ID = gc.ClassID
order by g.GuestName;

--Shaun => I removed the nulls with a where clause on this one, but the next one will have a case statement.
SELECT g.GuestName AS 'Guest Name', c.ClassName
FROM Guests g
LEFT JOIN Classes c on c.ID = 
        (select TOP 1 gc2.ClassID
         from GuestClasses gc2
         where gc2.GuestID = g.Id
         order by gc2.ClassLevel desc
        )
where ClassName is NOT NULL
Group By g.GuestName, c.ClassName;

--With a case.
SELECT g.GuestName AS 'Guest Name', c.ClassName
FROM Guests g
LEFT JOIN Classes c on c.ID = 
        (select TOP 1 gc2.ClassID
         from GuestClasses gc2
         where gc2.GuestID = g.Id
         order by gc2.ClassLevel desc
        )
Group By g.GuestName, c.ClassName;


----Return guests that stay within a date range.
select Guests.ID, Guests.GuestName, RoomStays.RoomID, RoomStays.GuestID, RoomStays.RoomRate, RoomStays.StayDate
from Guests
right join RoomStays on Guests.ID = RoomStays.GuestID
where RoomStays.StayDate > '1583-07-07' and RoomStays.StayDate < '1622-10-01';

----Create a function for pricing.
--/*
--IF OBJECT_ID (N'Supplies.calculatePricing', N'IF') IS NOT NULL
--    DROP FUNCTION Supplies.calculatePricing;
--GO
--CREATE FUNCTION Supplies.calculatePricing (@supplyID int)  
--RETURNS TABLE
--AS
--RETURN
--(
--	SELECT s.ID, s.ItemName, s.CostPerUnit, (s.CostPerUnit * 3) as CostForThree
--    FROM Supplies AS s
--    GROUP BY s.ID
--);*/

/*Write a function to return a "report" of all users and their roles.
*Weird error on line 792: CREATE FUNCTION MUST BE THE ONLY STATEMENT IN THE BATCH
*The function runs fine, but it looks like an error in SQL Server window.
*/
IF OBJECT_ID (N'dbo.runGuestReport', N'FN') IS NOT NULL
    DROP FUNCTION dbo.runGuestReport;
GO
CREATE FUNCTION dbo.runGuestReport()
RETURNS TABLE
AS
RETURN
    SELECT
		e.ID,
		e.EmployeeName,
		r.roleName
	FROM
		Employees e
	JOIN Roles r on r.ID = e.RoleID;

--To run:
select * from dbo.runGuestReport();

--Function to return all classes and the count of guests that hold those classes.
--Almost working, counts aren't right. Leaving out 3 Classes.
IF OBJECT_ID (N'dbo.runClassesReport', N'FN') IS NOT NULL
    DROP FUNCTION dbo.runClassesReport;
GO
CREATE FUNCTION dbo.runClassesReport()
RETURNS TABLE
AS
RETURN
    SELECT
		c.ID,
		c.ClassName,
		ClassCount.Counts
	FROM
		Classes c
	join GuestClasses gc on gc.ClassID = c.ID
	join
		(select 
			count(c2.ClassName)as Counts 
		from Classes c2 
		join GuestClasses gc2 on c2.ID = gc2.ClassID 
		group by c2.ClassName) as ClassCount on gc.ClassID = ClassCount.Counts
	GROUP BY c.ID, c.ClassName, ClassCount.Counts;

select * from dbo.runClassesReport();

/*
select g.GuestName, c.ClassName
from Guests g
join GuestClasses gc on gc.GuestID = g.ID
join Classes c on c.ID = gc.ClassID group by c.ClassName, g.GuestName;*/

--Function to return all guests, ordered by name (asc) and their classes and corresponding levels. Add a column that labels them beginner (1-5), intermediate (5-10), expert (10+)
--Select works, function creation does not.
IF OBJECT_ID (N'dbo.runGuestExperienceReport', N'FN') IS NOT NULL
    DROP FUNCTION dbo.runGuestExperienceReport;
GO
CREATE FUNCTION dbo.runGuestExperienceReport()
RETURNS TABLE
AS
RETURN
    SELECT
		g.GuestName,
		c.ClassName,
		gc.ClassLevel,
		(case
			when gc.ClassLevel >=0 AND gc.ClassLevel <=10 then 'Beginner'
			when gc.ClassLevel >10 AND gc.ClassLevel<=20 then 'Intermediate'
			when gc.ClassLevel >20 then 'Expert'
			else null
		end) as Experience
	FROM
		Guests g
	join GuestClasses gc on gc.ClassID = g.ID
	join Classes c on gc.ClassID = c.ID
	order by g.GuestName asc;

--Function that takes in a level and returns a "grouping" from Q3.
--Where to put the where clause?
IF OBJECT_ID (N'dbo.runLevelReport', N'FN') IS NOT NULL
    DROP FUNCTION dbo.runLevelReport;
GO
CREATE FUNCTION dbo.runLevelReport(@guestExperience varchar)
RETURNS TABLE
AS
RETURN
    SELECT
		g.GuestName,
		c.ClassName,
		gc.ClassLevel,
		(case
			when gc.ClassLevel >=0 AND gc.ClassLevel <=10 then 'Beginner'
			when gc.ClassLevel >10 AND gc.ClassLevel<=20 then 'Intermediate'
			when gc.ClassLevel >20 then 'Expert'
			else null
		end) as ExperienceLevel
	FROM
		Guests g
	join GuestClasses gc on gc.ClassID = g.ID
	join Classes c on gc.ClassID = c.ID
	where ExperienceLevel = @guestExperience
	order by g.GuestName asc;

IF OBJECT_ID (N'dbo.runLevelReport', N'FN') IS NOT NULL
    DROP FUNCTION dbo.runLevelReport;
GO
CREATE FUNCTION dbo.runLevelReport(@guestExperience varchar)
RETURNS TABLE
AS
RETURN
    (SELECT
		*
	from dbo.runGuestExperienceReport());

--Function to return a report of all open rooms on a particular day.
--Running with duplicates?
IF OBJECT_ID (N'dbo.runRoomReport', N'FN') IS NOT NULL
    DROP FUNCTION dbo.runRoomReport;
GO
CREATE FUNCTION dbo.runRoomReport(@stayDay date)
RETURNS TABLE
AS
RETURN
    select 
		r.ID as RoomID,
		t.TavernName,
		s.StatusName
	from Rooms r
	join Taverns t on r.TavernID = t.ID
	join RoomStatus s on r.StatusID = s.ID
	join RoomStays rs on rs.RoomID = r.ID
	where s.ID = 4 AND rs.StayDate = @stayDay;

select * from dbo.runRoomReport('1597-12-02');

select * from RoomStays;
select * from Rooms where Rooms.ID = 2 AND Rooms.StatusID = 4;

--Function to return a report of prices in a range.
IF OBJECT_ID (N'dbo.runPriceReport', N'FN') IS NOT NULL
    DROP FUNCTION dbo.runPriceReport;
GO
CREATE FUNCTION dbo.runPriceReport(@lowPrice money, @highPrice money)
RETURNS TABLE
AS
RETURN
    select 
		r.ID as RoomID,
		t.TavernName,
		s.StatusName,
		r.RoomRate
	from Rooms r
	join Taverns t on r.TavernID = t.ID
	join RoomStatus s on r.StatusID = s.ID
	join RoomStays rs on rs.RoomID = r.ID
	where r.RoomRate >= @lowPrice AND r.RoomRate <= @highPrice;

select * from dbo.runPriceReport(100.00, 200.00);

--Stored Procedure that uses the result form 6 to Create a Room in another tavern that undercuts (is less than) the cheapest room by a penny.
CREATE PROCEDURE undercutTheCompetition
@lowPrice money, @highPrice money
AS
	select
		min(Result.RoomRate)
	from
	(select * from dbo.runPriceReport(100.00, 200.00)) as Result
GO;

EXEC undercutTheCompetition;
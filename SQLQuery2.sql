/*Schema already created
CREATE SCHEMA DBBootCamp;*/

DROP TABLE IF EXISTS Taverns;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Roles;
DROP TABLE IF EXISTS Locations;
DROP TABLE IF EXISTS Rats;
DROP TABLE IF EXISTS TavernService; /*Services is a reserved word and isn't best practices, so used TavernServices as a table name instead.*/
DROP TABLE IF EXISTS ServiceStatus;
DROP TABLE IF EXISTS Supplies;
DROP TABLE IF EXISTS SalesHistory;
DROP TABLE IF EXISTS Orders;

CREATE TABLE Taverns (
ID integer Identity(1,1),
TavernName varchar(255),
FloorCount integer,
OwnerID integer,
LocationID integer
);

CREATE TABLE Users (
ID integer Identity(1,1),
userName varchar(255),
RoleID integer
);

CREATE TABLE Roles (
ID integer Identity(1,1),
RoleName varchar(255),
RoleDescription varchar(255)
);

CREATE TABLE Locations (
ID integer Identity(1,1),
LocationName varchar(255)
);

CREATE TABLE Rats (
ID integer Identity(1,1),
TavernID integer,
RatName varchar(255)
);

CREATE TABLE TavernService (
ID integer Identity(1,1),
ServiceName varchar(255),
Price integer,
StatusID varchar(255)
);

CREATE TABLE ServiceStatus (
ID integer Identity(1,1),
StatusName varchar(255)
);

CREATE TABLE Supplies (
ID integer Identity(1,1),
TavernID integer,
ItemName varchar(255),
Unit varchar(255),
Amount integer,
InventoryCount integer,
LastUpdated datetime
);

CREATE TABLE SalesHistory (
ID integer Identity(1,1),
TavernID integer,
Guest varchar(255),
ItemID integer,
TotalSale float,
SaleDate datetime
);

CREATE TABLE Orders (
ID integer Identity(1,1),
SupplyID integer,
TavernID integer,
Cost money,
Amount integer,
DateOfSale datetime
);


/* Taverns values*/
INSERT INTO Taverns (TavernName, FloorCount, OwnerID, LocationID)
VALUES('The Green Dragon', 2, 1, 1);
INSERT INTO Taverns (TavernName, FloorCount, OwnerID, LocationID)
VALUES('The Snoring Rose', 1, 2, 1);
INSERT INTO Taverns (TavernName, FloorCount, OwnerID, LocationID)
VALUES('The Square Crow', 3, 3, 2);
INSERT INTO Taverns (TavernName, FloorCount, OwnerID, LocationID)
VALUES('The Salty Horses Inn', 2, 4, 3);
INSERT INTO Taverns (TavernName, FloorCount, OwnerID, LocationID)
VALUES('The Elite Duck Tavern', 1, 5, 3);
INSERT INTO Taverns (TavernName, FloorCount, OwnerID, LocationID)
VALUES('The Vague Badger', 3, 6, 4);
INSERT INTO Taverns (TavernName, FloorCount, OwnerID, LocationID)
VALUES('The Panoramic Fig Tavern', 2, 7, 5);



/*Users values.*/
INSERT INTO Users (UserName, RoleID)
VALUES('Tollak', 1);
INSERT INTO Users (UserName, RoleID)
VALUES('Erhard', 1);
INSERT INTO Users (UserName, RoleID)
VALUES('Linn', 1);
INSERT INTO Users (UserName, RoleID)
VALUES('Mette', 1);
INSERT INTO Users (UserName, RoleID)
VALUES('Kara', 1);
INSERT INTO Users (UserName, RoleID)
VALUES('Vigdis', 1);
INSERT INTO Users (UserName, RoleID)
VALUES('Solfrid', 1);
INSERT INTO Users (UserName, RoleID)
VALUES('Catan', 2);
INSERT INTO Users (UserName, RoleID)
VALUES('Dunstan', 2);
INSERT INTO Users (UserName, RoleID)
VALUES('Leoma', 2);
INSERT INTO Users (UserName, RoleID)
VALUES('Sawyer', 2);
INSERT INTO Users (UserName, RoleID)
VALUES('Blake', 3);
INSERT INTO Users (UserName, RoleID)
VALUES('Delwyn', 3);
INSERT INTO Users (UserName, RoleID)
VALUES('Averil', 3);
INSERT INTO Users (UserName, RoleID)
VALUES('Lyndal', 4);
INSERT INTO Users (UserName, RoleID)
VALUES('Yetta', 4);
INSERT INTO Users (UserName, RoleID)
VALUES('Lena', 4);
INSERT INTO Users (UserName, RoleID)
VALUES('Sunniva', 4);

/*Roles values*/
INSERT INTO Roles (RoleName, RoleDescription)
VALUES('Owner', 'Owns the establishment.');
INSERT INTO Roles (RoleName, RoleDescription)
VALUES('Bartender', 'Serves the ale.');
INSERT INTO Roles (RoleName, RoleDescription)
VALUES('Waitress', 'Serves the food.');
INSERT INTO Roles (RoleName, RoleDescription)
VALUES('Member', 'Uses the services.');

/*Locations values*/
INSERT INTO Locations (LocationName)
VALUES('Abingdon');
INSERT INTO Locations (LocationName)
VALUES('Gillamoor');
INSERT INTO Locations (LocationName)
VALUES('Keld');
INSERT INTO Locations (LocationName)
VALUES('Hillfar');
INSERT INTO Locations (LocationName)
VALUES('Islesbury');

/*Rats values*/
INSERT INTO Rats (TavernID, RatName)
VALUES(1,'Arnfinn');
INSERT INTO Rats (TavernID, RatName)
VALUES(1,'Eyvor');
INSERT INTO Rats (TavernID, RatName)
VALUES(2,'Oda');
INSERT INTO Rats (TavernID, RatName)
VALUES(2,'Dagmar');
INSERT INTO Rats (TavernID, RatName)
VALUES(2,'Sten');
INSERT INTO Rats (TavernID, RatName)
VALUES(3,'Lief');
INSERT INTO Rats (TavernID, RatName)
VALUES(4,'Torhild');
INSERT INTO Rats (TavernID, RatName)
VALUES(5, 'Brynja');
INSERT INTO Rats (TavernID, RatName)
VALUES(5, 'Adaline');
INSERT INTO Rats (TavernID, RatName)
VALUES(6, 'Rosamunde');
INSERT INTO Rats (TavernID, RatName)
VALUES(6, 'Ansgar');
INSERT INTO Rats (TavernID, RatName)
VALUES(7, 'Adala');
INSERT INTO Rats (TavernID, RatName)
VALUES(7, 'Lulu');

/*TavernService values.*/
INSERT INTO TavernService(ServiceName, Price, StatusID)
VALUES('Weapon Sharpening', 1.00, 1);
INSERT INTO TavernService(ServiceName, Price, StatusID)
VALUES('Nessie Rides', 3.50, 2);
INSERT INTO TavernService(ServiceName, Price, StatusID)
VALUES('Beard Trim', 4.00, 1);
INSERT INTO TavernService(ServiceName, Price, StatusID)
VALUES('Hair Braiding', 5.00, 1);
INSERT INTO TavernService(ServiceName, Price, StatusID)
VALUES('Tattooing', 6.50, 1);

/*ServiceStatus values*/
INSERT INTO ServiceStatus(StatusName)
VALUES('Active');
INSERT INTO ServiceStatus(StatusName)
VALUES('Inactive');

/*Supplies values*/
INSERT INTO Supplies(TavernID, ItemName, Unit, Amount, InventoryCount, LastUpdated)
VALUES(1,'Strong Ale', 'Ounces', 8, 20, '02/04/2022');
INSERT INTO Supplies(TavernID, ItemName, Unit, Amount, InventoryCount, LastUpdated)
VALUES(2,'Strong Ale', 'Ounces', 8, 15, '01/10/2022');
INSERT INTO Supplies(TavernID, ItemName, Unit, Amount, InventoryCount, LastUpdated)
VALUES(1,'Brown Bread', 'Loaf', 1, 30, '12/27/2021');
INSERT INTO Supplies(TavernID, ItemName, Unit, Amount, InventoryCount, LastUpdated)
VALUES(2,'Brown Bread', 'Loaf', 1, 10, '12/14/2021');
INSERT INTO Supplies(TavernID, ItemName, Unit, Amount, InventoryCount, LastUpdated)
VALUES(3,'Soup', 'Ounces', 10, 40, '02/05/2022');

/*SalesHistory values*/
INSERT INTO SalesHistory(TavernID, Guest, ItemID, TotalSale, SaleDate)
VALUES(1,'Egilhard', 3, 3.00, '02/05/2022');
INSERT INTO SalesHistory(TavernID, Guest, ItemID, TotalSale, SaleDate)
VALUES(3,'Gerde', 4, 4.00, '02/16/2022');
INSERT INTO SalesHistory(TavernID, Guest, ItemID, TotalSale, SaleDate)
VALUES(7,'Germund', 1, 1.00, '02/20/2022');
INSERT INTO SalesHistory(TavernID, Guest, ItemID, TotalSale, SaleDate)
VALUES(5,'Talea', 5, 6.00, '01/26/2022');
INSERT INTO SalesHistory(TavernID, Guest, ItemID, TotalSale, SaleDate)
VALUES(1,'Arna', 1, 1.00, '12/25/2021');

/*Orders values*/
INSERT INTO Orders(SupplyID, TavernID, Cost, Amount, DateOfSale)
VALUES(1, 1, 10.00, 2, '12/25/2021');
INSERT INTO Orders(SupplyID, TavernID, Cost, Amount, DateOfSale)
VALUES(3, 2, 8.00, 4, '12/14/2021');
INSERT INTO Orders(SupplyID, TavernID, Cost, Amount, DateOfSale)
VALUES(5, 1, 10.00, 2, '12/01/2021');
INSERT INTO Orders(SupplyID, TavernID, Cost, Amount, DateOfSale)
VALUES(6, 3, 15.00, 6, '12/28/2021');
INSERT INTO Orders(SupplyID, TavernID, Cost, Amount, DateOfSale)
VALUES(1, 1, 5.00, 3, '01/16/2022');
INSERT INTO Orders(SupplyID, TavernID, Cost, Amount, DateOfSale)
VALUES(7, 3, 15.00, 6, '01/22/2022');
/*Schema already created
CREATE SCHEMA DBBootCamp;*/

DROP TABLE IF EXISTS Taverns;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Roles;
DROP TABLE IF EXISTS Locations;
DROP TABLE IF EXISTS Rats;
DROP TABLE IF EXISTS TavernService; /*Services is a reserved word and isn't best practices, so used TavernService as a table name instead.*/
DROP TABLE IF EXISTS ServiceStatus;
DROP TABLE IF EXISTS Supplies;
DROP TABLE IF EXISTS SalesHistory;
DROP TABLE IF EXISTS Orders;

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

CREATE TABLE Roles (
ID integer PRIMARY KEY Identity(1,1),
RoleName varchar(255),
RoleDescription varchar(255)
);

CREATE TABLE Users (
ID integer PRIMARY KEY Identity(1,1),
UserName varchar(255),
TavernID integer FOREIGN KEY REFERENCES Taverns(ID),
RoleID integer FOREIGN KEY REFERENCES Roles(ID)
);


CREATE TABLE Rats (
ID integer Identity(1,1),
RatName varchar(255),
TavernID integer
);

CREATE TABLE TavernService (
ID integer Identity(1,1),
TavernID integer,
ServiceName varchar(255),
Price money,
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
InventoryCount integer,
LastUpdated date
);

CREATE TABLE SalesHistory (
ID integer Identity(1,1),
TavernID integer,
Guest varchar(255),
ServiceID integer,
TotalSale money,
SaleDate date
);

CREATE TABLE Orders (
ID integer Identity(1,1),
SupplyID integer,
TavernID integer,
TotalPrice money,
Amount integer,
DateOfSale date
);
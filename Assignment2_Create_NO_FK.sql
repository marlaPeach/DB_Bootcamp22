/*Schema already created
CREATE SCHEMA DBBootCamp;*/

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS SalesHistory;
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
LocationID integer
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

CREATE TABLE SalesHistory (
ID integer PRIMARY KEY Identity(1,1),
TavernID integer,
Guest varchar(255),
ServiceID integer,
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
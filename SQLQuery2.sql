/*Schema already created with: CREATE SCHEMA DBBootCamp;*/
DROP TABLE IF EXISTS Taverns;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Roles;
DROP TABLE IF EXISTS Rats;
DROP TABLE IF EXISTS Locations;
DROP TABLE IF EXISTS Supplies;
DROP TABLE IF EXISTS TavernServices; /*Services is a reserved word and isn't best practices, so used TavernServices as a table name instead.*/
DROP TABLE IF EXISTS ServiceStatus;
DROP TABLE IF EXISTS SalesHistory;

CREATE TABLE Taverns (
ID integer Identity(1,1),
TavernName varchar(255),
FloorCount integer,
OwnerID integer,
LocationID integer
);

CREATE TABLE Users (
ID integer Identity(1,1),
TavernID integer,
FName varchar(255),
LName varchar(255),
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

CREATE TABLE Rat (
ID integer Identity(1,1),
TavernID integer,
RatName varchar(255),
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
SupplyName varchar(255),
Unit varchar(255),
Amount integer,
InventoryCount integer,
LastUpdated datetime
);

CREATE TABLE SalesHistory (
ID integer Identity(1,1),
TavernID integer,
ItemID integer,
ItemDescription varchar(255),
TotalSale float,
SaleDate datetime
);
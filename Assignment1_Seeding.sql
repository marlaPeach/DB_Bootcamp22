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
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Tollak', 1, 1);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Erhard', 2, 1);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Linn', 3, 1);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Mette', 4,  1);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Kara', 5, 1);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Vigdis', 6, 1);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Solfrid', 7, 1);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Catan', 1, 2);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Dunstan', 2, 2);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Leoma', 3, 2);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Sawyer', 4, 2);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Alfreda', 5, 2);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Everly', 6, 2);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Audie', 7, 2);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Blake', 1, 3);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Delwyn', 2, 3);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Averil', 3, 3);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Becket', 4, 3);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Marshal', 5, 3);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Alison', 6, 3);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Udele', 7, 3);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Lyndal', 1, 4);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Yetta', 2, 4);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Lena', 3, 4);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Sunniva', 4, 4);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Edlyn', 5, 4);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Mildred', 6, 4);
INSERT INTO Users (UserName, TavernID, RoleID)
VALUES('Wren', 7, 4);

/*Roles values*/
INSERT INTO Roles (RoleName, RoleDescription)
VALUES('Owner', 'Owns the establishment.');
INSERT INTO Roles (RoleName, RoleDescription)
VALUES('Bartender', 'Serves the ale.');
INSERT INTO Roles (RoleName, RoleDescription)
VALUES('Waitress', 'Serves the food.');
INSERT INTO Roles (RoleName, RoleDescription)
VALUES('Member', 'Uses the services.');



/*Rats values*/
INSERT INTO Rats (RatName, TavernID)
VALUES('Arnfinn', 1);
INSERT INTO Rats (RatName, TavernID)
VALUES('Eyvor', 1);
INSERT INTO Rats (RatName, TavernID)
VALUES('Oda', 2);
INSERT INTO Rats (RatName, TavernID)
VALUES('Dagmar', 2);
INSERT INTO Rats (RatName, TavernID)
VALUES('Sten', 2);
INSERT INTO Rats (RatName, TavernID)
VALUES('Lief', 3);
INSERT INTO Rats (RatName, TavernID)
VALUES('Torhild', 4);
INSERT INTO Rats (RatName, TavernID)
VALUES('Brynja', 5);
INSERT INTO Rats (RatName, TavernID)
VALUES('Adaline', 5);
INSERT INTO Rats (RatName, TavernID)
VALUES('Rosamunde', 6);
INSERT INTO Rats (RatName, TavernID)
VALUES('Ansgar', 6);
INSERT INTO Rats (RatName, TavernID)
VALUES('Adala', 7);
INSERT INTO Rats (RatName, TavernID)
VALUES('Lulu', 7);

/*TavernService values.*/
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(1,'Weapon Sharpening', 1.00, 1);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(3,'Weapon Sharpening', 1.00, 1);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(4, 'Nessie Rides', 3.50, 2);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(6, 'Nessie Rides', 3.50, 2);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(1, 'Beard Trim', 4.00, 1);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(5, 'Beard Trim', 4.00, 1);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(7, 'Beard Trim', 4.00, 1);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(2, 'Hair Braiding', 5.00, 1);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(1, 'Hair Braiding', 5.00, 1);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(4, 'Hair Braiding', 5.00, 1);
INSERT INTO TavernService(TavernID, ServiceName, Price, StatusID)
VALUES(7, 'Tattooing', 6.50, 1);

/*ServiceStatus values*/
INSERT INTO ServiceStatus(StatusName)
VALUES('Active');
INSERT INTO ServiceStatus(StatusName)
VALUES('Inactive');

/*Supplies values*/
INSERT INTO Supplies(TavernID, ItemName, Unit, InventoryCount, LastUpdated)
VALUES(1,'Strong Ale', 'Ounces', 8, '02/04/2022');
INSERT INTO Supplies(TavernID, ItemName, Unit, InventoryCount, LastUpdated)
VALUES(2,'Strong Ale', 'Ounces', 8, '01/10/2022');
INSERT INTO Supplies(TavernID, ItemName, Unit, InventoryCount, LastUpdated)
VALUES(1,'Brown Bread', 'Loaf', 1, '12/27/2021');
INSERT INTO Supplies(TavernID, ItemName, Unit, InventoryCount, LastUpdated)
VALUES(2,'Brown Bread', 'Loaf', 1, '12/14/2021');
INSERT INTO Supplies(TavernID, ItemName, Unit, InventoryCount, LastUpdated)
VALUES(3,'Soup', 'Ounces', 10, '02/05/2022');

/*SalesHistory values*/
INSERT INTO SalesHistory(TavernID, Guest, ServiceID, TotalSale, SaleDate)
VALUES(1,'Egilhard', 3, 3.00, '02/05/2022');
INSERT INTO SalesHistory(TavernID, Guest, ServiceID, TotalSale, SaleDate)
VALUES(3,'Gerde', 4, 4.00, '02/16/2022');
INSERT INTO SalesHistory(TavernID, Guest, ServiceID, TotalSale, SaleDate)
VALUES(7,'Germund', 1, 1.00, '02/20/2022');
INSERT INTO SalesHistory(TavernID, Guest, ServiceID, TotalSale, SaleDate)
VALUES(5,'Talea', 5, 6.00, '01/26/2022');
INSERT INTO SalesHistory(TavernID, Guest, ServiceID, TotalSale, SaleDate)
VALUES(1,'Arna', 1, 1.00, '12/25/2021');

/*Orders values*/
INSERT INTO Orders(SupplyID, TavernID, TotalPrice, Amount, DateOfSale)
VALUES(1, 1, 10.00, 2, '12/25/2021');
INSERT INTO Orders(SupplyID, TavernID, TotalPrice, Amount, DateOfSale)
VALUES(3, 2, 8.00, 4, '12/14/2021');
INSERT INTO Orders(SupplyID, TavernID, TotalPrice, Amount, DateOfSale)
VALUES(5, 1, 10.00, 2, '12/01/2021');
INSERT INTO Orders(SupplyID, TavernID, TotalPrice, Amount, DateOfSale)
VALUES(6, 3, 15.00, 6, '12/28/2021');
INSERT INTO Orders(SupplyID, TavernID, TotalPrice, Amount, DateOfSale)
VALUES(1, 1, 5.00, 3, '01/16/2022');
INSERT INTO Orders(SupplyID, TavernID, TotalPrice, Amount, DateOfSale)
VALUES(7, 3, 15.00, 6, '01/22/2022');
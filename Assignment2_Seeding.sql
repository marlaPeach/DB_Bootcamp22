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

/*ServiceStatus values*/
INSERT INTO ServiceStatus(StatusName)
VALUES
	('Active'),
	('Inactive');

/*Supplies values*/
INSERT INTO Supplies(ItemName, Unit, CostPerUnit, TotalInventory, LastUpdated)
VALUES
	('Strong Ale', 'Ounces', 240, .80, '7/9/1612'),
	('Brown Bread', 'Loaf', 72, 1.00, '10/20/1620'),
	('Soup', 'Ounces', 587, 3.00, '4/10/1625');

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

/*SalesHistory values*/
INSERT INTO SalesHistory(TavernID, Guest, ServiceID, TotalSale, SaleDate)
VALUES
	(1,'Egilhard', 3, 3.00, '02/05/2022'),
	(3,'Gerde', 4, 4.00, '02/16/2022'),
	(7,'Germund', 1, 1.00, '02/20/2022'),
	(5,'Talea', 5, 6.00, '01/26/2022'),
	(1,'Arna', 1, 1.00, '12/25/2021');

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
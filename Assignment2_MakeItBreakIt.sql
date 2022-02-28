/*Foreign key constraint issues*/
INSERT INTO Guests (GuestName, Birthday, Cakeday, StatusID)
VALUES ('Urg the Destroyer', '6/14/1583', '8/8/1583', 10);

INSERT INTO GuestClasses (GuestID, ClassID, ClassLevel)
VALUES (1, 14, 3);

/*Identity/PK contstraint*/
UPDATE Taverns
SET ID = 60
WHERE ID = 7;

/*FK Constraint*/
UPDATE Taverns
SET LocationID = 10
WHERE LocationID = 2;
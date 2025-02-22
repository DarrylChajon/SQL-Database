Use COMPANY_darry --Testing PKs and FKs

INSERT INTO EMPLOYEE VALUES('John', 'B', 'Smith', '123456789', '9-Jan-1955', '731
Fondren, Houston, TX', 'M',
30000, '987654321', 5); --Duplicate Tuple

INSERT INTO EMPLOYEE VALUES('Darryl', 'R', 'Chajon', '123456789', '9-Jan-1955', '731
Fondren, Houston, TX', 'M',
30000, '987654321', 5); --Duplicate SSN

INSERT INTO EMPLOYEE VALUES('John', 'B', 'Smith', NULL, '9-Jan-1955', '731
Fondren, Houston, TX', 'M',
30000, '987654321', 5); --Null value into SSN (PK column)

INSERT INTO EMPLOYEE VALUES('John', 'B', NULL, '123456789', '9-Jan-1955', '731
Fondren, Houston, TX', 'M',
30000, '987654321', 5); --Null value in NOT NULL value (LNAME)

INSERT INTO Works_On values ('2804034', '8', '99'); --Testing FK constraints, non existing values (SSN 2804034) and (PNO 8)
go

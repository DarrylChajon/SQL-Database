Use COMPANY_darry --Creating tables with no FK constraints

Create Table Employee (
Fname varchar(15) Not Null,
Minit char,
Lname varchar(15) NOT NULL,
Ssn char(9) NOT NULL,
Bdate date,
Address varchar(30),
Sex char ,
Salary decimal(10,2),
Super_ssn char(9),
Dno int NOT NULL
Primary Key (Ssn),
)

Create Table Department (
Dname varchar(15) NOT NULL,
Dnumber int NOT NULL,
Mgr_ssn char(9) NOT NULL,
Mgr_start_date date
Primary Key (Dnumber),
Unique (Dname),
)

Create Table Dependent (
	ESSN char(9) NOT NULL,
	Dependent_Name varchar(15) NOT NULL,
	Sex char,
	Bdate date,
	Relationship char(10) NOT NULL,
	)

Create table Dept_Locations (
	DNumber int NOT NULL,
	DLocation char(15) NOT NULL,
	Unique (DNumber),
	)

Create table Project (
	PName char(20) NOT NULL,
	PNumber int NOT NULL,
	PLocation char(20) NOT NULL,
	DNum int NOT NULL,
	Unique (PNumber),
	)

Create table Works_On (
	ESSN char(9) NOT NULL,
	PNO int NOT NULL,
	Hours Decimal(20,2) NOT NULL,
	)
go
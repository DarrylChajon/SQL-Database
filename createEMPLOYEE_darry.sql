Use COMPANY_darry;

CREATE TABLE EMPLOYEE(
	FNAME	varchar(25) NOT NULL,
	MINIT	CHAR,
	LNAME	VARCHAR(25) NOT NULL,
	SSN		CHAR(9) NOT NULL,
	BDATE	DATE,
	[ADDRESS]	VARCHAR(50) NOT NULL,
	SEX		CHAR NOT NULL,
	SALARY	DECIMAL(18,2),
	SUPERSSN	CHAR(9),
	DNO		INT NOT NULL 
	);
	GO
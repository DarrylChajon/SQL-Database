Use COMPANY_darry --Adding FK constraints to tables

Alter table Department
Add foreign key (Mgr_ssn) references Employee (ssn)

Alter table Dependent
Add foreign key (ESSN) references Employee (ssn)

Alter table Dept_Locations
Add foreign key (DNumber) references Department(DNumber)

Alter table Project
Add foreign key (DNum) references Department(DNumber)

Alter table Works_On
Add foreign key (ESSN) references Employee (ssn),
	foreign key (PNO) references Project (PNumber)

go
Use COMPANY_darry --Adding Employee FK constraints

Alter Table Employee
Add Foreign Key (Super_ssn) References Employee (Ssn)

Alter Table Employee
Add Foreign Key (Dno) References Department (Dnumber)
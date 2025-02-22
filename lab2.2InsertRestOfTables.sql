Use COMPANY_darry --Insert values into Dept_Locations, Project, Works_On, and Dependent

Insert into Dept_Locations values ('1', 'Houston');
Insert into Dept_Locations values ('4', 'Stafford');
Insert into Dept_Locations values ('5', 'Bellaire');
Insert into Dept_Locations values ('5', 'Sugarland');
Insert into Dept_Locations values ('5', 'Houston');

Insert into Project values ('ProductX', '1', 'Bellaire', '5');
Insert into Project values ('ProductY', '2', 'Sugarland', '5');
Insert into Project values ('ProductZ', '3', 'Houston', '5');
Insert into Project values ('Computerization', '10', 'Stafford', '4');
Insert into Project values ('Reorganization', '20', 'Houston', '1');
Insert into Project values ('NewBenefits', '30', 'Stafford', '4');

Insert into Works_On values ('123456789', '1', '32.5');
Insert into Works_On values ('123456789', '2', '7.5');
Insert into Works_On values ('333445555', '2', '10');
Insert into Works_On values ('333445555', '3', '10');
Insert into Works_On values ('333445555', '10', '10');
Insert into Works_On values ('333445555', '20', '10');
Insert into Works_On values ('453453453', '1', '20');
Insert into Works_On values ('453453453', '2', '20');
Insert into Works_On values ('666884444', '3', '40');
Insert into Works_On values ('888665555', '20', ' ');
Insert into Works_On values ('987654321', '20', '15');
Insert into Works_On values ('987654321', '30', '20');
Insert into Works_On values ('987987987', '10', '35');
Insert into Works_On values ('987987987', '30', '5');
Insert into Works_On values ('999887777', '10', '10');
Insert into Works_On values ('999887777', '30', '30');

Insert into Dependent values ('123456789', 'Alice', 'F', '31-Dec-78', 'Daughter');
Insert into Dependent values ('123456789', 'Elizabeth', 'F', '05-May-57', 'Spouse');
Insert into Dependent values ('123456789', 'Michael', 'M', '01-Jan-78', 'Son');
Insert into Dependent values ('333445555', 'Alice', 'F', '05-Apr-76', 'Daughter');
Insert into Dependent values ('333445555', 'Joy', 'F', '03-May-48', 'Spouse');
Insert into Dependent values ('333445555', 'Theodore', 'M', '25-Oct-73', 'Son');
Insert into Dependent values ('987654321', 'Abner', 'M', '29-Feb-32', 'Spouse');

go
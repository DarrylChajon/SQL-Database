Use COMPANY_darry
GO
CREATE PROCEDURE SP_Report_NEW_Budget
AS
IF Exists (Select name From sys.sysobjects Where Name = N'NEW_Dept_Budget'
			AND xtype = N'U')
BEGIN
	Drop Table NEW_Dept_Budget
END
CREATE TABLE NEW_Dept_Budget (
	Dept_No int NOT NULL,
	Dept_Name CHAR(30) NOT NULL,
	Count_Emp INT,
	New_Sum_Salary INT,
	New_Ave_Salary INT)
	
	Declare @DeptName as varchar(15);
	Declare @DeptNumber as int;
	Declare @NoEmp as int;
	Declare @SumSalary as decimal(15,2);
	Declare @AveSalary as decimal(15,2);
	Declare @NewSumSalary as decimal(15,2);
	Declare @NewAveSalary as decimal(15,2);

IF (SELECT COUNT(*) FROM VDept_Budget) > 0
BEGIN
	Declare @BudgetCursor as CURSOR;
	SET @BudgetCursor = Cursor for
	Select Dept_Name, Dept_Number, No_Emp, Sum_Salary, Ave_Salary
	From VDept_Budget;

OPEN @BudgetCursor;
Fetch Next From @BudgetCursor Into @DeptName, @DeptNumber, @NoEmp, @SumSalary, @AveSalary;
While @@FETCH_STATUS = 0
Begin
	If (@DeptNumber = 1)
		Set @NewSumSalary = @SumSalary * 1.1
	If (@DeptNumber = 4)
		Set @NewSumSalary = @SumSalary * 1.2
	If (@DeptNumber = 5)
		Set @NewSumSalary = @SumSalary * 1.3
	If (@DeptNumber = 7)
		Set @NewSumSalary = @SumSalary * 1.4

INSERT INTO NEW_Dept_Budget (Dept_No, Dept_Name, Count_Emp, New_Sum_Salary, New_Ave_Salary) VALUES 
	(@DeptNumber, (SELECT TOP 1 Dno FROM Employee WHERE Dno = @DeptNumber), 
	(SELECT COUNT(*) FROM Employee WHERE Dno = @DeptNumber), @SumSalary, @AveSalary);
Fetch Next From @BudgetCursor Into @DeptName, @DeptNumber,
									@NoEmp, @SumSalary, @AveSalary;
End;
Close @BudgetCursor;
Deallocate @BudgetCursor;
End;
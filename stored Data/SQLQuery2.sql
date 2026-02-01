create table dbo.Employee(
EmpId INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
PhoneNo VARCHAR(15),
DepartmentId INT,
JobTitle VARCHAR(50),
DateOfJoining DATE,
Salary DECIMAL(10,2),
Status VARCHAR(20)
);


create procedure GetAllEmployees
as
begin
select * from dbo.Employee;
end;


exec GetAllEmployees;

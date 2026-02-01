CREATE PROCEDURE ReadEmployee
@empId INT
as
begin
select *
from dbo.Employee
where empId=@empId;
end;

exec dbo.ReadEmployee @empId=4;


CREATE PROCEDURE ReadAEmployee
as
begin
select *
from dbo.Employee
end;

EXEC dbo.ReadAEmployee;

 
INSERT INTO Employee(	FirstName,
							LastName,
							Email,
							PhoneNo,
							DepartmentId,
							JobTitle,
							DateOfJoining,
							Salary,
							Status)
					VALUES('Vinod',
							'Gowda',
							'vinod@gmail.com',
							'8861445434',
							10,
							'QA',
							'2001-07-30',
							20000.00,
							'Active');							 


create procedure createEmployee
as
begin

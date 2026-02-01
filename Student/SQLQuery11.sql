CREATE TABLE Students
(
    StudentId INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName  VARCHAR(50) NOT NULL,
    Email     VARCHAR(100) NOT NULL UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE()
);


select * from Students;

CREATE PROCEDURE InsertStudent
(
    @FirstName VARCHAR(50),
    @LastName  VARCHAR(50),
    @Email     VARCHAR(100)
)
AS
BEGIN
    INSERT INTO Students (FirstName, LastName, Email)
    VALUES (@FirstName, @LastName, @Email);
END;



CREATE PROCEDURE GetAllStudents
AS
BEGIN
    SELECT
        StudentId,
        FirstName,
        LastName,
        Email,
        CreatedAt
    FROM Students;
END;








CREATE PROCEDURE GetStudentById
(
    @StudentId INT
)
AS
BEGIN
    SELECT
        StudentId,
        FirstName,
        LastName,
        Email,
        CreatedAt
    FROM Students
    WHERE StudentId = @StudentId;
END;



CREATE PROCEDURE UpdateStudent
(
    @StudentId INT,
    @FirstName VARCHAR(50),
    @LastName  VARCHAR(50),
    @Email     VARCHAR(100)
)
AS
BEGIN
    UPDATE Students
    SET
        FirstName = @FirstName,
        LastName  = @LastName,
        Email     = @Email
    WHERE StudentId = @StudentId;
END;







CREATE PROCEDURE DeleteStudent
(
    @StudentId INT
)
AS
BEGIN
    DELETE FROM Students
    WHERE StudentId = @StudentId;
END;




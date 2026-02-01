SELECT name 
FROM sys.databases;


use testDB;
truncate table testDB;

SELECT name 
FROM sys.databases
WHERE name = 'testDB';


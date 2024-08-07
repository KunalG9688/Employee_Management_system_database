-- Create Logins
--Logins are created at the SQL Server instance level. You can create SQL Server authenticated logins or Windows authenticated logins.

--Create a SQL Server Login

CREATE LOGIN EmployeeMgmtLogin
WITH PASSWORD = 'StrongPassword123';

-- Create a Windows Login
--CREATE LOGIN [DOMAIN\UserName]
--FROM WINDOWS;

-- Create Database Users
--Once a login is created, you can create a database user in a specific database.
--Create a Database User
USE EmployeeManagement;
CREATE USER EmployeeMgmtUser
FOR LOGIN EmployeeMgmtLogin;

-- Create a Windows User

USE EmployeeManagement;
CREATE USER [DOMAIN\UserName]
FOR LOGIN [DOMAIN\UserName];

--Assign Roles and Permissions
--Assigning roles to users helps manage permissions efficiently. Use predefined roles or create custom roles.

--Assign a Predefined Role
--Assign the db_datareader role to allow read access to all tables.
USE EmployeeManagement;
EXEC sp_addrolemember 'db_datareader', 'EmployeeMgmtUser';

--Assign the db_datawriter role to allow write access to all tables
USE EmployeeManagement;
EXEC sp_addrolemember 'db_datawriter', 'EmployeeMgmtUser';

--Create and Assign a Custom Role
--Create a custom role and assign specific permissions.

USE EmployeeManagement;

-- Create a custom role
CREATE ROLE PayrollManagerRole;

-- Grant specific permissions to the role
GRANT SELECT, INSERT, UPDATE ON Payroll TO PayrollManagerRole;
GRANT EXECUTE ON SCHEMA::dbo TO PayrollManagerRole;

-- Add a user to the custom role
EXEC sp_addrolemember 'PayrollManagerRole', 'EmployeeMgmtUser';

-- Revoke Permissions
--To revoke specific permissions from a user or role, use the REVOKE statement.
--USE EmployeeManagement;
--REVOKE SELECT ON Employees FROM EmployeeMgmtUser;


--To remove a user from a role, use sp_droprolemember.
--USE EmployeeManagement;
--EXEC sp_droprolemember 'db_datareader', 'EmployeeMgmtUser';

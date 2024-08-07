--Usage Examples
--Connecting to the Database
--Once the login and user are set up, you can connect to the database using the credentials.

--SQL Server Authentication: Use EmployeeMgmtLogin and the associated password to connect.
--Windows Authentication: Use the Windows login credentials to connect.
--Accessing Data
--When a user is assigned the db_datareader role, they can execute queries like

-- As EmployeeMgmtUser
--SELECT * FROM Employees;

--If a user has the db_datawriter role, they can modify data:

-- As EmployeeMgmtUser
--INSERT INTO Employees (FirstName, LastName, JobTitle, Department, Salary)
--VALUES ('John', 'Smith', 'Analyst', 'Finance', 60000);

--Security Best Practices
--Use Strong Passwords: Enforce strong passwords for SQL Server logins.
--Least Privilege Principle: Grant only the permissions necessary for users to perform their tasks.
--Role-Based Access Control: Use roles to manage permissions, making it easier to apply changes across multiple users.
--Regular Audits: Regularly review user access and permissions to ensure compliance with security policies.
--By following these steps and best practices, you can effectively manage users and permissions in your EmployeeManagement database, ensuring data security and operational efficiency. If you have any questions or need further assistance, feel free to ask!
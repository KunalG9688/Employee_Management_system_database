--Security Measures
--To ensure the security of sensitive data, such as employee salaries and personal information, consider implementing the following security measures:

--Encryption: Encrypt sensitive columns.
--Access Control: Use roles and permissions to restrict access.

-- Create a role for HR personnel with restricted access
CREATE ROLE HRManager;
GO

-- Grant access to specific tables
GRANT SELECT, INSERT, UPDATE ON Employees TO HRManager;
GRANT SELECT, INSERT, UPDATE ON Attendance TO HRManager;
GRANT SELECT, INSERT, UPDATE ON Payroll TO HRManager;
GO

-- Create a role for regular users with limited access
CREATE ROLE EmployeeUser;
GO

-- Grant limited access to specific tables
GRANT SELECT ON Employees TO EmployeeUser;
GRANT SELECT ON Attendance TO EmployeeUser;
GO

-- Example of column-level encryption
-- Add an encryption key
--CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'StrongPassword123!';
--CREATE CERTIFICATE EmployeeCert WITH SUBJECT = 'Employee Data Encryption';
--CREATE SYMMETRIC KEY EmployeeKey WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE EmployeeCert;
--GO

-- Encrypt the Salary column in the Employees table
--OPEN SYMMETRIC KEY EmployeeKey DECRYPTION BY CERTIFICATE EmployeeCert;
--UPDATE Employees SET Salary = EncryptByKey(Key_GUID('EmployeeKey'), CAST(Salary AS VARBINARY));
--CLOSE SYMMETRIC KEY EmployeeKey;
--GO
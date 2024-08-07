-- Create the database
CREATE DATABASE EmployeeManagement;
GO

-- Use the database
USE EmployeeManagement;
GO

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber NVARCHAR(15) NOT NULL,
    HireDate DATE NOT NULL,
    JobTitle NVARCHAR(50) NOT NULL,
    Department NVARCHAR(50) NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL
);
GO

-- Create the Attendance table
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    AttendanceDate DATE NOT NULL,
    Status NVARCHAR(20) CHECK (Status IN ('Present', 'Absent', 'Leave')) NOT NULL,
    CheckInTime TIME,
    CheckOutTime TIME
);
GO

-- Create the Payroll table
CREATE TABLE Payroll (
    PayrollID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    BasicSalary DECIMAL(10, 2) NOT NULL,
    Bonuses DECIMAL(10, 2) DEFAULT 0,
    Deductions DECIMAL(10, 2) DEFAULT 0,
    NetSalary AS (BasicSalary + Bonuses - Deductions) PERSISTED
);
GO



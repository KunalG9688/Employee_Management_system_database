-- Code For View

--Employee View
--This view combines basic employee details with department and job title for easy access.

CREATE VIEW vw_EmployeeDetails AS
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    JobTitle,
    Department,
    Salary
FROM 
    Employees;


SELECT * FROM vw_EmployeeDetails;

--Attendance View
--This view aggregates attendance data to show the number of days each employee was present in a specific month.

CREATE VIEW vw_AttendanceSummary AS
SELECT 
    EmployeeID,
    YEAR(AttendanceDate) AS Year,
    MONTH(AttendanceDate) AS Month,
    COUNT(CASE WHEN Status = 'Present' THEN 1 END) AS DaysPresent
FROM 
    Attendance
GROUP BY 
    EmployeeID, YEAR(AttendanceDate), MONTH(AttendanceDate);


SELECT * FROM vw_AttendanceSummary WHERE Year = 2024 AND Month = 7;

--Payroll View
--This view provides a detailed breakdown of each employee's payroll, including bonuses and deductions

CREATE VIEW vw_PayrollDetails AS
SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    p.BasicSalary,
    p.Bonuses,
    p.Deductions,
    (p.BasicSalary + p.Bonuses - p.Deductions) AS NetSalary
FROM 
    Employees e
JOIN 
    Payroll p ON e.EmployeeID = p.EmployeeID;


SELECT * FROM vw_PayrollDetails;

--Comprehensive Employee Information View
---This view combines information from all three tables to provide a comprehensive view of an employee's details, attendance, and payroll.

CREATE VIEW vw_EmployeeComprehensiveInfo AS
SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    e.JobTitle,
    e.Department,
    a.AttendanceDate,
    a.Status,
    p.BasicSalary,
    p.Bonuses,
    p.Deductions,
    (p.BasicSalary + p.Bonuses - p.Deductions) AS NetSalary
FROM 
    Employees e
LEFT JOIN 
    Attendance a ON e.EmployeeID = a.EmployeeID
LEFT JOIN 
    Payroll p ON e.EmployeeID = p.EmployeeID;


SELECT * FROM vw_EmployeeComprehensiveInfo WHERE EmployeeID = 1;

--Monthly Salary View
--This view calculates the total salary expenses per department for a given month.

CREATE VIEW vw_MonthlySalaryByDepartment AS
SELECT 
    e.Department,
    YEAR(GETDATE()) AS Year,
    MONTH(GETDATE()) AS Month,
    SUM(p.BasicSalary + p.Bonuses - p.Deductions) AS TotalSalary
FROM 
    Employees e
JOIN 
    Payroll p ON e.EmployeeID = p.EmployeeID
GROUP BY 
    e.Department;


SELECT * FROM vw_MonthlySalaryByDepartment;

-- Creating and Managing Views
-- Modify a View: Use the ALTER VIEW statement to modify an existing view.

ALTER VIEW vw_EmployeeDetails AS
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    JobTitle,
    Department,
    Salary,
    HireDate
FROM 
    Employees;


-- DROP VIEW vw_EmployeeDetails;

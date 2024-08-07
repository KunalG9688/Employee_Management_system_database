-- Fetch Employee Details
-- When fetching employee details, optimize the query by selecting only necessary columns and using indexed columns.

-- Optimized query to fetch employee details
SELECT EmployeeID, FirstName, LastName, JobTitle, Department
FROM Employees
WHERE LastName = 'Smith'; -- Use indexed column


-- Retrieve Attendance Records
-- When retrieving attendance records for an employee, use indexed columns and specify the date range to limit the number of rows scanned.

-- Optimized query to fetch attendance records for a specific employee
SELECT AttendanceDate, Status, CheckInTime, CheckOutTime
FROM Attendance
WHERE EmployeeID = 1 -- Indexed column
  AND AttendanceDate BETWEEN '2024-07-01' AND '2024-07-31'; -- Date range filter


-- Calculate Payroll
-- Use the indexed EmployeeID to efficiently join tables and compute payroll details.
-- Optimized query to calculate payroll for a specific employee
SELECT e.EmployeeID, e.FirstName, e.LastName, 
       p.BasicSalary, p.Bonuses, p.Deductions, p.NetSalary
FROM Employees e
JOIN Payroll p ON e.EmployeeID = p.EmployeeID -- Use indexed join
WHERE e.EmployeeID = 1; -- Indexed column


-- List Employees with Payroll Details
-- Optimize the retrieval of employee and payroll details by using indexed joins and selective columns

-- Optimized query to list employees with their payroll details
SELECT e.EmployeeID, e.FirstName, e.LastName, e.JobTitle, 
       p.BasicSalary, p.Bonuses, p.Deductions, 
       (p.BasicSalary + p.Bonuses - p.Deductions) AS NetSalary
FROM Employees e
JOIN Payroll p ON e.EmployeeID = p.EmployeeID -- Use indexed join
WHERE e.Department = 'IT'; -- Filter by department



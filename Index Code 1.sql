CREATE INDEX IX_Employees_Department_Salary ON Employees (Department, Salary);

CREATE INDEX IX_Employees_LastName_FirstName_Salary
ON Employees (LastName, FirstName)
INCLUDE (Salary);

--Index on Date Column
--Create an index on AttendanceDate for queries filtering by date range.
CREATE INDEX IX_Attendance_AttendanceDate
ON Attendance (AttendanceDate);

--Composite Index for Join
--Create a composite index on EmployeeID and AttendanceDate to optimize join and range queries.
CREATE INDEX IX_Attendance_EmployeeID_AttendanceDate
ON Attendance (EmployeeID, AttendanceDate);


-- Indexing the Payroll Table
-- Index for Frequent Filters

-- Create an index on BasicSalary to improve performance for queries filtering on salary

CREATE INDEX IX_Payroll_BasicSalary
ON Payroll (BasicSalary);


--Composite Index for Calculations
--Create a composite index on EmployeeID and BasicSalary for queries performing calculations or aggregations.

CREATE INDEX IX_Payroll_EmployeeID_BasicSalary
ON Payroll (EmployeeID, BasicSalary);


--General Index Maintenance
--Rebuild Indexes: Regularly rebuild indexes to address fragmentation.

ALTER INDEX ALL ON Employees REBUILD;
ALTER INDEX ALL ON Attendance REBUILD;
ALTER INDEX ALL ON Payroll REBUILD;


--Drop Unused Indexes: Drop indexes that are not being used to save resources.

-- DROP INDEX IX_Employees_Department_Salary ON Employees;

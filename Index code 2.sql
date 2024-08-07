-- Add an index to Employees table for searching by last name
CREATE INDEX IDX_Employee_LastName ON Employees (LastName);

-- Add an index to the Attendance table for fast lookup by EmployeeID and AttendanceDate
CREATE INDEX IDX_Attendance_EmployeeDate ON Attendance (EmployeeID, AttendanceDate);

-- Add an index to the Payroll table for quick access by EmployeeID
CREATE INDEX IDX_Payroll_EmployeeID ON Payroll (EmployeeID);

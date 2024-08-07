-- Window Functions
-- ROW_NUMBER(): Assigns a unique sequential integer to rows within a partition of a result set.
SELECT EmployeeID, FirstName, LastName,
       ROW_NUMBER() OVER (PARTITION BY Department ORDER BY Salary DESC) AS RowNum
FROM Employees;

-- RANK(): Assigns a rank to each row within a partition of a result set, with gaps in rank values if there are ties.

SELECT EmployeeID, FirstName, LastName, Salary,
       RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS Rank
FROM Employees;

-- DENSE_RANK(): Similar to RANK(), but without gaps in rank values if there are ties.

SELECT EmployeeID, FirstName, LastName, Salary,
       DENSE_RANK() OVER (PARTITION BY Department ORDER BY Salary DESC) AS DenseRank
FROM Employees;

-- NTILE(): Divides the result set into a specified number of approximately equal parts and assigns a unique integer to each row indicating its group.

SELECT EmployeeID, FirstName, LastName, Salary,
       NTILE(4) OVER (ORDER BY Salary DESC) AS Quartile
FROM Employees;

-- LEAD() and LAG(): Access data from subsequent or previous rows in the result set.

SELECT EmployeeID, FirstName, LastName, Salary,
       LEAD(Salary, 1) OVER (ORDER BY Salary) AS NextSalary,
       LAG(Salary, 1) OVER (ORDER BY Salary) AS PreviousSalary
FROM Employees;


-- Common Table Expressions (CTEs)
-- CTEs provide a way to define a temporary result set that can be referenced within a SELECT, INSERT, UPDATE, or DELETE statement.

WITH EmployeeCTE AS (
    SELECT EmployeeID, FirstName, LastName, Salary
    FROM Employees
    WHERE Salary > 50000
)
SELECT * FROM EmployeeCTE;


-- Pivot and Unpivot
-- Pivoting and unpivoting data help transform data from rows to columns and vice versa.
-- PIVOT: Converts rows to columns.

SELECT EmployeeID, [2024-07-21] AS Day1, [2024-07-22] AS Day2, [2024-07-23] AS Day3
FROM (
    SELECT EmployeeID, AttendanceDate, Status
    FROM Attendance
) AS SourceTable
PIVOT (
    MAX(Status)
    FOR AttendanceDate IN ([2024-07-21], [2024-07-22], [2024-07-23])
) AS PivotTable;

-- STRING_AGG()
-- Aggregates strings from multiple rows into a single string with a specified separator.

SELECT Department, STRING_AGG(FirstName, ', ') AS Employees
FROM Employees
GROUP BY Department;

-- JSON Functions
-- SQL Server provides functions to work with JSON data. For example, if your data is stored in JSON format:
-- FOR JSON PATH: Formats query results as JSON.
SELECT EmployeeID, FirstName, LastName
FROM Employees
FOR JSON PATH;

-- OPENJSON(): Parses JSON text and returns objects and properties.

DECLARE @json NVARCHAR(MAX) = N'[
    {"EmployeeID": 1, "FirstName": "John", "LastName": "Doe"},
    {"EmployeeID": 2, "FirstName": "Jane", "LastName": "Smith"}
]';

SELECT *
FROM OPENJSON(@json)
WITH (
    EmployeeID INT,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50)
);


-- Date and Time Functions
-- Advanced date and time functions for calculating intervals and manipulating dates:

-- DATEADD(): Adds a specified number of date parts to a date.

SELECT DATEADD(DAY, 30, GETDATE()) AS FutureDate;

-- DATEDIFF(): Calculates the difference between two dates.

SELECT DATEDIFF(DAY, '2024-01-01', GETDATE()) AS DaysSinceStart;

-- FORMAT(): Formats date and time values as strings.

SELECT FORMAT(GETDATE(), 'yyyy-MM-dd') AS FormattedDate;

-- Aggregate Functions
-- Advanced aggregation functions for statistical calculations:

-- GROUP_CONCAT(): SQL Server does not have GROUP_CONCAT() but you can use STRING_AGG().

-- ROLLUP: Generates subtotals and grand totals.

SELECT Department, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY ROLLUP (Department);

-- CUBE: Generates a result set that shows aggregates for all combinations of grouping columns.

SELECT Department, JobTitle, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY CUBE (Department, JobTitle);


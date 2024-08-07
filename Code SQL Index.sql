CREATE INDEX IX_Employees_Department_Salary ON Employees (Department, Salary);


-- sys.dm_db_index_usage_stats

-- Monitor Index Usage: Regularly review index usage and performance using

SELECT * FROM sys.dm_db_index_usage_stats
WHERE database_id = DB_ID() AND object_id = OBJECT_ID('Employees');


--Consider Index Maintenance: Regularly rebuild or reorganize indexes to address fragmentation.

ALTER INDEX ALL ON Employees REBUILD;

-- Query Optimization Techniques
-- Avoid SELECT *: Only select the columns you need to reduce data transfer and processing.

SELECT EmployeeID, FirstName, LastName FROM Employees;



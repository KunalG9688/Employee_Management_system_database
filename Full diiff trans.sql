-------------------------------------FULL BACK ------------------------------------------------
-- 1. First Take full backup

-- Insert records into Employees table
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Ethan', 'Clark', '1988-03-14', 'ethan.clark@example.com', '555-0123', '2024-01-15', 'Software Developer', 'IT', 85000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Olivia', 'Davis', '1990-07-22', 'olivia.davis@example.com', '555-0456', '2024-02-20', 'HR Specialist', 'Human Resources', 60000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('James', 'Johnson', '1985-11-03', 'james.johnson@example.com', '555-0789', '2024-03-10', 'Marketing Manager', 'Marketing', 95000.00);

INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Sophia', 'Miller', '1992-01-18', 'sophia.miller@example.com', '555-0987', '2024-01-25', 'Accountant', 'Finance', 70000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Liam', 'Anderson', '1986-06-12', 'liam.anderson@example.com', '555-0675', '2024-02-15', 'Sales Executive', 'Sales', 65000.00);

----taking full backup-------


INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Isabella', 'Martinez', '1991-09-30', 'isabella.martinez@example.com', '555-1234', '2024-03-05', 'Project Manager', 'Operations', 90000.00);

INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Lucas', 'Gray', '1990-09-12', 'lucas.gray@example.com', '555-7615', '2024-09-20', 'Product Designer', 'Design', 77000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Amelia', 'Bennett', '1992-04-07', 'amelia.bennett@example.com', '555-7616', '2024-09-25', 'Research Scientist', 'R&D', 83000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Oliver', 'Morgan', '1987-12-18', 'oliver.morgan@example.com', '555-7617', '2024-10-05', 'Business Development Manager', 'Sales', 91000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Mason', 'Thompson', '1987-04-27', 'mason.thompson@example.com', '555-1122', '2024-01-30', 'IT Support', 'IT', 55000.00);


----taking diff backup-----


INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Ava', 'White', '1989-08-19', 'ava.white@example.com', '555-3344', '2024-02-25', 'Content Writer', 'Marketing', 58000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Noah', 'Harris', '1993-12-25', 'noah.harris@example.com', '555-5566', '2024-03-15', 'Data Analyst', 'Data Science', 80000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Emma', 'Lewis', '1984-05-20', 'emma.lewis@example.com', '555-6677', '2024-01-18', 'Business Analyst', 'Business Intelligence', 75000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES
('Zoe', 'Hughes', '1986-08-25', 'zoe.hughes@example.com', '555-7609', '2024-08-01', 'Software Tester', 'IT', 67000.00);
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES
('Matthew', 'Wright', '1989-05-14', 'matthew.wright@example.com', '555-7610', '2024-08-15', 'Web Developer', 'IT', 72000.00);

--tran

INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Grace', 'Mitchell', '1988-12-10', 'grace.mitchell@example.com', '555-7607', '2024-07-01', 'Supply Chain Coordinator', 'Supply Chain', 68000.00);
--Completion time: 2024-07-31T21:45:23.7135052+05:30


INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Daniel', 'Perez', '1993-10-02', 'daniel.perez@example.com', '555-7608', '2024-07-15', 'Graphic Designer', 'Design', 62000.00);
--Completion time: 2024-07-31T21:46:38.3419307+05:30

INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Lily', 'Roberts', '1990-04-20', 'lily.roberts@example.com', '555-7611', '2024-09-01', 'Network Administrator', 'IT', 75000.00);

--Completion time: 2024-07-31T21:47:32.6481296+05:30
-- take above time but we get except this record aove record will get
INSERT INTO Employees (FirstName, LastName, DateOfBirth, Email, PhoneNumber, HireDate, JobTitle, Department, Salary)
VALUES 
('Nora', 'Parker', '1995-06-30', 'nora.parker@example.com', '555-7618', '2024-10-10', 'Operations Coordinator', 'Operations', 68000.00);

--Completion time: 2024-07-31T21:49:21.6713239+05:30



SELECT GETDATE() AS CurrentDateTime;

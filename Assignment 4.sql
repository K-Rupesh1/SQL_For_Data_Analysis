
-- Creating the Employees table
CREATE TABLE Employees2 (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Creating the Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);


-- Inserting data into the Employees table
INSERT INTO Employees2 (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

-- Inserting data into the Departments table
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');

select * from Employees2

select * from Departments

--Write a SQL query to list the names of employees along with the names of the departments they work in.
select FirstName,LastName,DepartmentName from Employees2 e
join Departments d
on e.DepartmentID = d.DepartmentID

--Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
select d.DepartmentName,e.FirstName,e.lastname from  Departments d
left join Employees2 e
on d.DepartmentID = e.DepartmentID

--Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).
select FirstName,LastName from Employees2 e
left join  Departments d
on e.DepartmentID = d.DepartmentID
where e.DepartmentID is null

--Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
select firstname, LastName, DepartmentName from employees2 e
join Departments d
on e.DepartmentID = d.DepartmentID
where d.Departmentid=(select DepartmentID from Employees2  where firstname='jane' and LastName='doe') 

--Write a SQL query to find the department with the highest total salary paid to its employees.
select d.DepartmentName,sum(salary) as [total_salary] from Employees2 e 
join Departments d
on e.DepartmentID = d.DepartmentID
group by d.DepartmentName
order by sum(salary) desc
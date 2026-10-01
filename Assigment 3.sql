
CREATE TABLE Employees1 (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees1(EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

select * from employees1

--Write a SQL query to find the names of employees whose first names start with the letter 'J'.
select FirstName,LastName from Employees1
where FirstName like 'J%'

--Write a SQL query to find the names of employees whose last names end with the letter 'n'.
select FirstName,LastName from Employees1
where LastName like '%n'

--Write a SQL query to find the email addresses of employees that contain the word "john".
select Email from Employees1
where Email like '%john%'

--Write a SQL query to find the names of employees whose first names have exactly 5 characters.
select FirstName from Employees1
where FirstName like '_____'

--Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.
select lastname from Employees1
where lastname like '%_a%'


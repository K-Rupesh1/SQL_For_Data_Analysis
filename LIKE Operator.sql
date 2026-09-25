
-- Create Employees_us table
CREATE TABLE Employees_US (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert sample data into Employees table
INSERT INTO Employees_us (EmployeeID, FirstName, LastName, Department) VALUES
(1, 'Alice', 'Smith', 'Finance'),
(2, 'Bob', 'Johnson', 'Engineering'),
(3, 'Charlie', 'Williams', 'Marketing'),
(4, 'Diana', 'Brown', 'Finance'),
(5, 'Edward', 'Jones', 'Engineering'),
(6, 'Fiona', 'Garcia', 'Marketing'),
(7, 'George', 'Miller', 'Finance'),
(8, 'Hannah', 'Wilson', 'Engineering');

select * from Employees_US


--Find Employees whose Last Name starts with 'S'.
select * from Employees_US where lastname like 's%'

--Find Employees whose First Name ends with 'a'.
select * from Employees_US where FirstName like '%a'

--Find Employees whose Department contains 'Eng'.
select * from Employees_US where Department like '%Eng%'

--Find Employees whose Last Name is exactly 5 characters long.
select * from Employees_US where LastName like '_____'

--Find Employees whose First Name starts with 'C' or 'D'.
select * from Employees_US where FirstName like '[CD]%'

select * from Employees_US where FirstName like 'c%' or FirstName like 'd%'

--Find Employees whose Last Name contains 'son'.
select * from Employees_US where LastName like '%son%'

--Find Employees whose First Name contains the letter 'i' as the second character.
select* from Employees_US where FirstName like '_i%'

--Find Employees whose Last Name starts with any letter between 'A' and 'L'.
select * from Employees_US where LastName like'[a-l]%'


--Find Employees whose First Name does not contain 'o'.
select * from Employees_US where FirstName not like '%o%'

--Find Employees whose Last Name ends with 'a' and is exactly 5 characters long.
select * from Employees_US where LastName like '%a' and LastName like '_____'
select * from Employees_US where LastName like '____a'

--Find Employees whose Department starts with 'Mar' and ends with 'ing'.
select * from Employees_US where Department like'mar%' and Department like '%ing'

--Find Employees whose First Name has an 'a' in the third position.
select * from Employees_US where FirstName like '__a%'

--Find Employees whose Last Name starts with 'Br' or 'Bl'.
select * from Employees_US where LastName like 'br%' or LastName like 'bl%'

--Find Employees whose First Name starts with a vowel.
select * from Employees_US where FirstName like '[aeiou]%'

--Find Employees whose First Name does not start with a consonant.
select * from Employees_US where FirstName not like '[^aeiou]%'

--Find Employees whose First Name starts with a consonant.
select * from Employees_US where FirstName not like '[aeiou]%'

select * from Employees_US where FirstName like '[^aeiou]%'
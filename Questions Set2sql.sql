select * from Employees

--1. How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from employees
where Department='IT' and salary >75000

--2. How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from employees
where Department='HR' or salary <60000

--3. How do you select employees who do not work in the 'Finance' department?
select * from employees
where Department !='Finance'
--or
select * from employees
where Department not in ('Finance')
--or
select * from employees
where Department not like 'Finance'

--4. How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select  * from employees 
where salary between 60000 and 70000 and Department ='Finance'

--5. How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
select * from employees 
where Department='IT' and salary <= 80000
--or
select * from Employees 
where Department in ('IT') and Salary<=80000

--6. How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
select * from employees
where (department='HR' or department='Finance') and salary > 65000
--or
select * from employees
where (department in ('HR') or department in ('Finance')) and salary > 65000

--7. How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from employees
where LastName like 'D%' and department not like 'HR'
--or
select * from employees
where LastName like 'D%' and department not in ('HR')

--8. How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
select * from Employees 
where department not like 'IT' and salary > 70000
--or
select * from Employees 
where not department ='IT' and salary > 70000
--or
select * from Employees 
where department not in ('IT') and salary > 70000

--9. How do you select employees who work in the 'IT' department and either have a salary greater 
--than 75,000 or have the first name 'Laura'?
select * from employees 
where Department='IT' and (salary > 75000 or FirstName ='Laura')

--10. How do you find employees who do not work in the 'HR' and 'IT' departments?
select * from employees
where Department not in('HR') and department not in ('IT')

select * from employees
where Department not in('HR','IT')
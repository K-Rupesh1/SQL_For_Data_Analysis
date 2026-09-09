
select * from Employees

select top 2 * from Employees

select top 2 employee_id,salary from Employees

select top 2 first_name,salary from employees

select top 2 salary from employees
order by salary desc 

-- second highest salary
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
OFFSET 1 rows 
fetch next 1 rows only


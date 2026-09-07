use employees_table
select * from Employee_Records;

-- print row where empid=2
select * from Employee_Records
where employee_id =2;

-- print empid,first name where empid=2
select employee_id,first_name from Employee_Records
where employee_id =2;

--print whose salary >=75000
select * from Employee_Records
where salary >=75000;

--print whose salary <75000
select * from Employee_Records
where salary <75000;

--print without duplicated row
select distinct first_name,last_name,department ,salary from Employee_Records
where salary <75000;
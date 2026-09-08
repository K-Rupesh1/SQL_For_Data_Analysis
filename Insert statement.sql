
insert into Employees values(6,'raj','ambani','it',67000,'2023-04-20')

insert into Employees (employee_id,first_name,last_name)
values(7,'rohit','mehara')

insert into Employees values(8,'mahesh','narang','hr',73000,'2024-01-21') 

select * from Employees

select * from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME='Employees'
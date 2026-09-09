select * from Employees

insert into Employees 
values(9,'jay','','it',73000,'2024-04-04')

insert into Employees 
values(10,'nithin','shamani','0',54000,'2021-02-22')

-- it does not display the data
select * from Employees
where department=null

select * from Employees
where department is null

select * from Employees
where department is not null
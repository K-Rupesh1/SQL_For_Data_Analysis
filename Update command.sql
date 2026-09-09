select * from employees

select * into #1 from employees

select * from #1

update #1
set department ='hr'
where department is null

update #1
set salary=89000 ,hire_date='2023-01-01'
where employee_id=7

select * from #1
where employee_id=7

update #1
set last_name='ram'
where employee_id=9
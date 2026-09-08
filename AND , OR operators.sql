select * from Employee_Records;

select * from Employee_Records
where last_name='miller';

select * from Employee_Records
where last_name='miller' and employee_id=3;

select * from Employee_Records
where last_name='miller' and salary=60000;

select * from Employee_Records
where department='hr' or department='finance' ;

select * from Employee_Records
where (department='hr' or department='finance') and salary >70000;
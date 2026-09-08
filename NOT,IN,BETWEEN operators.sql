select * from Employee_Records;

select * from Employee_Records
where not first_name='john' 

select * from Employee_Records
where not first_name='john' and not salary=60000

select * from Employee_Records
where not last_name='miller'

select * from Employee_Records
where not last_name='miller' and not department='hr'

select * from Employee_Records
where salary between 75000 and 85000

select * from Employee_Records
where salary not between 75000 and 85000

select * from Employee_Records
where salary >=75000 and salary <=85000

select * from Employee_Records
where department='hr' or department='it'

select * from Employee_Records
where department in('hr','it')

select * from Employee_Records
where department not in ('hr','it')
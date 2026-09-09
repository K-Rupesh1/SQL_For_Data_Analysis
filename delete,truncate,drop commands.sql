select * from Employees

select * into #2
from Employees

select * from #2

--delete row where lastname is empty
delete  from #2
where last_name=''

delete from #2
where department is null or department='0'

select * from #2

--  truncate it will delete entire data and keeps table structure

select * into #3
from Employees

select * from #3

truncate table #3

-- drop it will delete entire table with table structure
select * into #4
from Employees

select * from #4

drop table #4
select * from #4
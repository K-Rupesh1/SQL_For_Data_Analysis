select * from Employee_Records;

select distinct first_name from Employee_Records;
select  distinct first_name,last_name from Employee_Records;
select distinct first_name,last_name,salary from Employee_Records;
select distinct * from Employee_Records;

-- local temperory table 
select * into #temp1
from [dbo].[Employee_Records]

select * from #temp1;

-- global temperory table
select * into ##temp2
from [dbo].[Employee_Records];
select * from ##temp2;

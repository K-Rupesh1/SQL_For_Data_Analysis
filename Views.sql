
use [testDB] 

select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp


--A View is a virtual table,it is a stored SQL Query
--It helps in reducing the complexity of the code
--It helps in implementing security

-- create a view
CREATE VIEW View_1
AS
SELECT *
FROM emp_bkp


SELECT *
FROM View_1

--update empid with 100
update View_1
set EmployeeID=100

--create view_2
create view view_2
as 
select employeeid,firstname,lastname,email,departmentid,hiredate
from emp_bkp

select * from view_2


create view view_3
as 
select employeeid,firstname,lastname,email,departmentid,hiredate
from emp_bkp

select * from view_3

drop view view_3
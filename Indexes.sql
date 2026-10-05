
use testDB

------ indexes----
---Clustered index------
create database [test_index]
use test_index

select * from dbo.Employees

create index IX_1 on dbo.employees(salary desc)

create index IX_2 on dbo.employees(firstname,lastname)

drop index dbo.employees.IX_1

---- non Clustered index ----

create table students(
id int,
name varchar(256),
age int,
gender char(1)
)

insert into students values(1,'Raj',23,'M'),
(2,'Nikitha',20,'F'),
(3,'Priya',21,'F'),
(4,'Nithin',25,'M'),
(5,'Monica',20,'F')

select * from Students

create nonclustered index ix_2 on students (id)

create nonclustered index ix_1 on students (gender desc, age asc)

drop index ix_2 on students



--More than one non clustered index can exist while that is not the case with clustered index

--Clustered Index determines the physical order in which data is stored in a table while that is
--not the case with non clustered index

--Clustered index is faster than non clustered index because non clustered index needs to refer back to
--table if selected column is not present in it

--Non clustered index requires separate disc space for storage

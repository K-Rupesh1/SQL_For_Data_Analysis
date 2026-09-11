
create table append1(c1 int,c2 nvarchar(max),c3 int)

insert into append1 values(1,'A',7),
(2,'B',8),
(3,'C',9)

create table append2(c1 int,c2 nvarchar(max),c3 int)

insert into append2 values(11,'AA',17),
(2,'B',8),
(33,'C1',91)

select * from append1
select * from append2

select append1.c1,append1.c2,append1.c3,append2.c2,append2.c3 from append1
inner join append2
on append1.c1=append2.c1

-- including duplicate rows
select c1,c2,c3 from append1
union all
select c1,c2,c3 from append2

--without duplicate rows
-- including duplicate rows
select c1,c2,c3 from append1
union 
select c1,c2,c3 from append2

--Alias names which are specified in the first select statement will be assigned to the columns
select c1 as column1,c2 as column2,c3 as column3 from append1
union 
select c1 as col1,c2 as col2,c3 as col3 from append2
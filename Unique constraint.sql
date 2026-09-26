--Unique Constraint
--It ensures that a column consists of unique values

--Case 1 : We need to create the table
create table test_unique (
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)

select * from test_unique

insert into test_unique values (1,22,'Mayank','Mehera')

insert into test_unique values (1,24,'Rohit','Singh')  -- sid only accepts unique values

insert into test_unique values (null,34,'Akhilesh','Jain')

insert into test_unique values (null,54,'Nitin','Singh') -- sid only accepts unique values

--Case 2 : when the table already exists
-- lastname updated with a unique constraint
alter table test_unique
add unique (lastname)

--Primary key Constraint
--Create a table

create table test_pk1(
Eid int primary key,
Age tinyint ,
Gender char(1),
Firstname varchar(256)
)

-- inserting values
insert into test_pk1 values(1,23,'M','Mayank')

select * from test_pk1

insert into test_pk1 values(1,25,'F','Priya') --Violation of PRIMARY KEY constraint,Cannot insert duplicate key in object
insert into test_pk1 values(null,25,'F','Priya') --Cannot insert the value NULL into column 'Eid',column does not allow nulls

insert into test_pk1 values(2,25,'F','Priya')

-- Table Already exist
alter table test_pk1
add primary key (Age) ---Table 'test_pk1' already has a primary key defined on it.

-- create another table without primary key
create table test_pk2(
SID int not null unique,
firstname varchar(256),
age tinyint not null
)

-- alter table by adding primary key
alter table test_pk2
add primary key (SID,age)


drop table test_pk2

alter table test_pk2
add primary key (SID)

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'test_pk2'


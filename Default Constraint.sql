--create table
create table test_default(
EID int default 5,
firstname varchar(256) default 'Rohit',
lastname varchar(256),
age tinyint,
)

select * from test_default

insert into test_default values(1,'nithin','jain',20)
insert into test_default(lastname,age) values('jain',20)
insert into test_default(lastname) values('shaik')

--Alter the table 
--set age default as 5
alter table test_default
add default 25 for age

insert into test_default(lastname) values('naik')

select * from test_default

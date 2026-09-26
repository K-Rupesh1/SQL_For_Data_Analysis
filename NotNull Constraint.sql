create database constraints

use constraints

create table test_not_null(
EID int not null,
age tinyint,
firstname varchar(256)
)

select * from INFORMATION_SCHEMA.COLUMNS where table_name='test_not_null'

insert into test_not_null values(1,23,'Mayank')
insert into test_not_null values(null,23,'Mayank') -- eid doesnt take null values
insert into test_not_null values(2,null,'Raj')

select * from test_not_null


---table already exist 
---we want to make firstname column as nullable 
alter table test_not_null 
alter column firstname varchar(256) not null
insert into test_not_null values(3,null,'Mayank')
insert into test_not_null values(3,24,null)
select * from test_not_null
-- Foreign key Constraint

--Create primary key table
create table test_primarykey(
ID int primary key,
name varchar(256)
)

insert into test_primarykey values(1,'Mayank'),
(2,'Raj'),
(3,'Jayanth')


select * from test_primarykey

-- create foreign key table
create table test_foreignkey(
ID int foreign key references test_primarykey(id),
Course  varchar(256)
)

insert into test_foreignkey values(1,'A')

select * from test_foreignkey

insert into test_foreignkey values(null,'B')

insert into test_foreignkey values(5,'C') --The INSERT statement conflicted with the FOREIGN KEY constraint,Primary key doesnt contains id 5

-- create another table 
create table test_foreignkey2(
ID int,
Course varchar(256)
)

--Alter table by assigning a foreignkey
alter table test_foreignkey2
add foreign key (ID) references test_primarykey (ID)
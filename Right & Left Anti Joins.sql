create table t1(c1 int ,c2 nvarchar(max))

insert into t1(c1,c2) 
values(1,'A'),
(1,'B'),
(2,'C'),
(NULL,'D'),
(3,'E'),
(7,'DA')

create table t2(c1 int ,c3 nvarchar(max))

insert into t2(c1,c3) 
values(1,'XA'),
(2,'MB'),
(2,'NX'),
(NULL,'MO'),
(4,'XY'),
(5,'TF')

select * from t1

select * from t2

-- Right Anti join
select * from t1 
right join t2
on t1.c1=t2.c1
where t1.c1 is null

select t1.c1,t1.c2,t2.c3 from t1 
right join t2
on t1.c1=t2.c1
where t1.c1 is null

select * from t1 as a 
right join t2 as b
on a.c1=b.c1
where a.c1 is null

select a.c1,a.c2,b.c3 from t1 as a 
right join t2 as b
on a.c1=b.c1
where a.c1 is null

-- Left Anti join
select * from t1 
left join t2
on t1.c1=t2.c1
where t1.c1 is null

select t1.c1,t1.c2,t2.c3 from t1 
left join t2
on t1.c1=t2.c1
where t1.c1 is null

select * from t1 as a 
left join t2 as b
on a.c1=b.c1
where a.c1 is null

select a.c1,a.c2,b.c3 from t1 as a 
left join t2 as b
on a.c1=b.c1
where a.c1 is null
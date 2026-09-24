
select * from t1

select * from t1 as a
inner join t1 as b
on a.c1=b.c1

select a.c1,a.c2,b.c2 from t1 as a
inner join t1 as b
on a.c1=b.c1


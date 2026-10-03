--Recursive CTE Function

with [R CTE] as(
--anchory query
select 1 as n
union all
--recursive query
select n+1 from[R CTE] where n<=4
) 
select * from [R CTE]



---factorial of 5
with [R CTE] as(
--anchory query
select 1 as n
union all
--recursive query
select n+1 from[R CTE] where n<=4
) 
select exp(sum(log(n)))as [FACTORIAL] from [R CTE]\
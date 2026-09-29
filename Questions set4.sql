
select * from Customers

select * from Orders

select * from Products

--Identify pairs of customers who live in the same country
select  x.CustomerName,x.Country,y.CustomerName,y.country from customers x 
inner join customers y 
on x.country = y.Country
and x.CustomerID <> y.CustomerID
and x.CustomerID > y.CustomerID

--Find the customer who has spent the most on their orders
select customername ,total_price from
(select c.CustomerName,sum(p.price) as [Total_Price],DENSE_RANK() over(order by sum(p.price) desc) as [dr]
from customers c
join orders o 
on c.CustomerID=o.CustomerID
join products p
on o.ProductID = p.ProductID
group by CustomerName) as[m]
where dr=1

--Find customers who have ordered more than one type of products
select CustomerName,count(productid) as [orders_count] from customers c
join orders o
on c.CustomerID = o.CustomerID
group by  CustomerName
having count(productid) >1

--List all products and their corresponding orders, using a RIGHT JOIN, including products that have never been ordered
select ProductName,p.ProductID,OrderID from orders o 
right join products p
on o.ProductID = p.ProductID
 
--Retrieve all orders placed by customers from the USA.
select o.OrderID,customername,country,p.ProductName from customers c
join orders o
on c.CustomerID=o.CustomerID
join products p
on o.ProductID=p.ProductID
where country ='usa'

--Find the names of customers who have ordered a product priced above $500.
select distinct CustomerName,p.ProductName,p.Price from customers c
join orders o
on c.CustomerID=o.CustomerID
join Products p
on o.ProductID=p.ProductID
where price > 500

--Find customers who have ordered the same product more than once.
select customername from 
(select CustomerName,productid,count(orderid) as [orders_count] from customers c
join orders o
on c.CustomerID=o.CustomerID
group by CustomerName,ProductID
having count(orderid) > 2 )m

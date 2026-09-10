
select * from sales

-- sum function
select sum(quantity) [total_quantity] from sales

select sum(quantity) [total_quantity] ,sum(totalamount) [sum_of_amount] from sales

select PaymentMethod,sum(TotalAmount) as sum_of_amount from sales
group by PaymentMethod

select ProductID,sum(TotalAmount) as sum_of_amount from sales
group by ProductID
-- avg function
select avg(quantity) [average_quantity] from sales

select avg(quantity) [avg_quantity] ,avg(totalamount) [average_amount] from sales

-- find sum of (quantity,totalamount) ,avg(quantity,totalamount) based on productid

select
ProductID,
sum(quantity) as total_quantity,
sum(totalamount) as sum_of_totalamount,
avg(quantity) as average_quantity,
avg(totalamount) as average_amount
from sales
group by ProductID

-- find sum of (quantity,totalamount) ,avg(quantity,totalamount) based on productid and storeid 

select * from sales

select
ProductID,
storeid,
sum(quantity) as total_quantity,
sum(totalamount) as sum_of_totalamount,
avg(quantity) as average_quantity,
avg(totalamount) as average_amount
from sales
group by ProductID,StoreID

-- count function

select count(*) as rows_count from sales

select count(paymentmethod) as total_payments from sales

select count(distinct productid) as total_products from sales

select paymentmethod ,count(distinct paymentmethod) as payment_mode from sales
group by PaymentMethod


select paymentmethod ,count(paymentmethod) as payment_mode from sales
group by PaymentMethod

select paymentmethod ,count(*) as payment_mode from sales
group by PaymentMethod

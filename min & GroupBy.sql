
select * from sales

select min(quantity) [minimum qunatity] from sales

select min(saledate) [minimum saledate] from sales

select min(PaymentMethod) [minimum payment method] from sales

select StoreID,min(TotalAmount) [minimum total amount] from sales
group by StoreID

select SalespersonID,min(TotalAmount) [minimum total amount] from sales
group by SalespersonID
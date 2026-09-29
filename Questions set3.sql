create database [SQL Questions]

use [SQL Questions]

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert data into Customers table
INSERT INTO Customers (CustomerID, CustomerName, Country)
VALUES 
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'Canada'),
(4, 'David', 'USA'),
(5, 'Eve', 'Australia');

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    ProductID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert data into Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, ProductID)
VALUES 
(101, 1, '2024-08-01', 1001),
(102, 1, '2024-08-03', 1002),
(103, 2, '2024-08-04', 1001),
(104, 3, '2024-08-05', 1003),
(105, 5, '2024-08-06', 1004);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert data into Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1001, 'Laptop', 1000),
(1002, 'Smartphone', 700),
(1003, 'Tablet', 500),
(1004, 'Headphones', 200),
(1005, 'Smartwatch', 300);


select * from Customers

select * from Orders

select * from Products


--1) Write an SQL query to find the names of customers who have placed an order.
select distinct customername from Customers c
inner join orders o on o.customerid = c.customerid

--2) Find the list of customers who have not placed any orders.
select distinct CustomerName from Customers c
left join  orders o on o.customerid = c.customerid 
where o.OrderID  is null

--3) List all orders along with the product name and price.
select productname,price from products p
join orders o on o.ProductID = p.ProductID

--4) Find the names of customers and their orders, including customers who haven't placed any orders.
select distinct customername,OrderID from customers c
left join orders o on o.CustomerID=c.CustomerID

--5) Retrieve a list of products that have never been ordered.
select productname from products p
left join Orders o on o.ProductID = p.ProductID
where o.ProductID is null
--6) Find the total number of orders placed by each customer.
select CustomerName, count(OrderID) as [order_count] from customers c
inner join orders o on c.CustomerID = o.CustomerID
group by c.CustomerName
--OR 
select customername,count(orderid) [Number of Orders] from Customers c 
LEFT join Orders o on c.CustomerID = o.CustomerID
group by customername

--7) Display the customers, the products they've ordered, and the order date. Include customers who haven't placed any orders.
select CustomerName ,productname ,orderdate from Customers c
left join orders o on c.CustomerID = o.CustomerID
left join products p on o.ProductID = p.ProductID

select CustomerName ,orderdate from Customers c
left join orders o on c.CustomerID = o.CustomerID



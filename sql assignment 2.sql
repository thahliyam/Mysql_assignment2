# create database sales
create database sales;
use sales;

-- create a table orders
create table orders(Order_id int not null primary key, Customer_name varchar(15) not null ,
Product_category varchar(20) not null ,
Ordered_item varchar(15) not null ,
Contact_no varchar(10) unique not null);

desc orders;

-- Add new column to the table
ALTER TABLE orders add column Order_quantity int not null;
desc orders;

-- Rename the orders table to the sales_orders table.
Alter table orders rename to sales_orders;

-- Insert 10 rows into the sales_orders table.
Insert into sales_orders(Order_id,Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity)values
(211,'Lakshmi','Accessory','Bag',9766554433,3),
(212,'Bavin','Furniture','Chair',9798764433,6),
(213,'Roshan','Electronics','Mobile',8766554433,1),
(214,'Vinit','Accessory','Shoe',9766555444,2),
(215,'Preetha','Stationery','Book',976612345,10),
(216,'Sana','Accessory','Belt',9766123456,3),
(217,'Riya','Furniture','Table',6767554433,1),
(218,'Antony','Food','Milk',8075554433,15),
(219,'Maya','Electronics','Earpod',8876554433,2),
(220,'Anuradha','Food','Bread',8075082077,14);

select * from sales_orders;

-- Retieve customer_name and ordered_item from sales_orders table.
Select customer_name,ordered_item from sales_orders;

-- Use the update command to change the name of the product of any row.
Update sales_orders set Ordered_item='Tablet' where Order_id=213;

select * from sales_orders;

-- Delete the sales_orders table from the database
drop table sales_orders;
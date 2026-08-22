Use college;
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    sale_date DATE,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);
INSERT INTO sales
(sale_id, product_name, category, quantity,unit_price, sale_date, customer_name, city)
VALUES
(1, 'Laptop', 'Electronics', 2, 55000.00, '2026-08-01', 'Rahul', 'Delhi'),
(2, 'Mouse', 'Electronics', 5, 800.00, '2026-08-02', 'Aman', 'Meerut'),
(3, 'Chair', 'Furniture', 3, 4500.00, '2026-08-03', 'Priya', 'Noida'),
(4, 'Keyboard', 'Electronics', 4, 1500.00, '2026-08-04', 'Neha', 'Delhi'),
(5, 'Desk', 'Furniture', 2, 7000.00, '2026-08-05', 'Rohan', 'Ghaziabad'),
(6, 'Monitor', 'Electronics', 2, 12000.00, '2026-08-06', 'Arjun', 'Noida'),
(7, 'Headphones', 'Electronics', 3, 2500.00, '2026-08-07', 'Karan', 'Meerut'),
(8, 'Chair', 'Furniture', 1, 4500.00, '2026-08-08', 'Simran', 'Delhi'),
(9, 'Laptop', 'Electronics', 1, 60000.00, '2026-08-09', 'Vikas', 'Meerut'),
(10, 'Desk', 'Furniture', 4, 6500.00, '2026-08-10', 'Anjali', 'Noida');
select sum(unit_price)from sales;
select city, sum(unit_price)
from sales
group by city;

select city,count(quantity)
from sales
group by city
having sum(quantity)<=5;

SELECT * 
FROM sales 
WHERE product_name LIKE 'E%';

SELECT customer_name,sum(unit_price)
from sales
Group by customer_name;

SELECT city, SUM(unit_price)
FROM sales
GROUP BY city
ORDER BY sum(unit_price)DESC 
limit 1;

select city,sum(quantity),sum(unit_price)
from sales
Group by city
Having sum(unit_price) >=20000
Order by sum(quantity),sum(unit_price) DESC
Limit 3;

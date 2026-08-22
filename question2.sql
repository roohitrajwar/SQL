
CREATE TABLE shopping_complex (
    shop_id INT PRIMARY KEY,
    shop_name VARCHAR(50),
    category VARCHAR(30),
    floor INT,
    rating DECIMAL(2,1)
);

INSERT INTO shopping_complex (shop_id, shop_name, category, floor, rating) VALUES
(101, 'Zara', 'Clothing', 1, 4.5),
(102, 'Apple Store', 'Electronics', 2, 4.8),
(103, 'Starbucks', 'Cafe', 1, 4.2),
(104, 'Sephora', 'Cosmetics', 1, 4.4),
(105, 'Nike', 'Sportswear', 3, 4.6);
/*Write a query to list all shops in the 'Clothing' or 'cafe' categories.*/
select *
from shopping_complex
where category ='clothing' Or category='cafe';




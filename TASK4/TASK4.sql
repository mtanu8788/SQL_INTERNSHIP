CREATE TABLE sales(
sale_id INT PRIMARY KEY,
customer_id INT,
product_id INT,
category TEXT,
quentity INT,
price DECIMAL(10,2),
sale_date date
);
INSERT INTO sales VALUES
(1, 101, 201, 'Electronics', 2, 500.00, '2024-01-05'),
(2, 102, 202, 'Clothing', 1, 800.00, '2024-01-08'),
(3, 101, 203, 'Electronics', 3, 1500.00, '2024-01-12'),
(4, 103, 204, 'Furniture', 1, 5500.00, '2024-01-14'),
(5, 104, 205, 'Groceries', 10, 80.00, '2024-01-20'),
(6, 105, 206, 'Groceries', 5, 120.00, '2024-02-02'),
(7, 102, 207, 'Clothing', 2, 900.00, '2024-02-10'),
(8, 106, 208, 'Electronics', 1, 2300.00, '2024-02-14'),
(9, 107, 209, 'Furniture', 2, 4200.00, '2024-02-18'),
(10, 108, 210, 'Clothing', 4, 600.00, '2024-02-22'),

(11, 109, 211, 'Groceries', 8, 50.00, '2024-03-01'),
(12, 110, 212, 'Electronics', 1, 1800.00, '2024-03-04'),
(13, 111, 213, 'Furniture', 1, 7600.00, '2024-03-06'),
(14, 112, 214, 'Clothing', 3, 700.00, '2024-03-10'),
(15, 113, 215, 'Groceries', 6, 150.00, '2024-03-14'),
(16, 105, 216, 'Electronics', 1, 900.00, '2024-03-18'),
(17, 114, 217, 'Furniture', 2, 6500.00, '2024-03-22'),
(18, 115, 218, 'Clothing', 5, 400.00, '2024-03-24'),
(19, 116, 219, 'Groceries', 7, 110.00, '2024-03-28'),
(20, 117, 220, 'Electronics', 1, 3500.00, '2024-03-30'),

(21, 118, 221, 'Furniture', 1, 7800.00, '2024-04-01'),
(22, 101, 222, 'Clothing', 2, 950.00, '2024-04-04'),
(23, 119, 223, 'Groceries', 9, 60.00, '2024-04-08'),
(24, 120, 224, 'Electronics', 2, 2700.00, '2024-04-12'),
(25, 121, 225, 'Clothing', 1, 500.00, '2024-04-16'),
(26, 122, 226, 'Furniture', 1, 8800.00, '2024-04-20'),
(27, 123, 227, 'Groceries', 15, 40.00, '2024-04-24'),
(28, 124, 228, 'Electronics', 3, 1200.00, '2024-04-28'),
(29, 125, 229, 'Furniture', 2, 5400.00, '2024-04-30'),
(30, 126, 230, 'Clothing', 6, 350.00, '2024-05-02'),

(31, 127, 231, 'Groceries', 12, 90.00, '2024-05-05'),
(32, 128, 232, 'Clothing', 1, 650.00, '2024-05-07'),
(33, 129, 233, 'Electronics', 4, 2200.00, '2024-05-11'),
(34, 130, 234, 'Furniture', 1, 9200.00, '2024-05-14'),
(35, 131, 235, 'Groceries', 9, 70.00, '2024-05-18'),
(36, 132, 236, 'Clothing', 2, 500.00, '2024-05-22'),
(37, 133, 237, 'Electronics', 1, 1500.00, '2024-05-25'),
(38, 134, 238, 'Furniture', 3, 7800.00, '2024-05-28'),
(39, 135, 239, 'Groceries', 11, 45.00, '2024-05-30'),
(40, 136, 240, 'Clothing', 4, 400.00, '2024-06-01'),

(41, 137, 241, 'Electronics', 2, 3100.00, '2024-06-05'),
(42, 138, 242, 'Furniture', 2, 8400.00, '2024-06-08'),
(43, 139, 243, 'Clothing', 1, 550.00, '2024-06-10'),
(44, 140, 244, 'Groceries', 14, 55.00, '2024-06-12'),
(45, 141, 245, 'Electronics', 1, 2600.00, '2024-06-15'),
(46, 142, 246, 'Clothing', 5, 300.00, '2024-06-18'),
(47, 143, 247, 'Furniture', 1, 9600.00, '2024-06-20'),
(48, 144, 248, 'Groceries', 7, 85.00, '2024-06-22'),
(49, 145, 249, 'Electronics', 3, 1400.00, '2024-06-25'),
(50, 146, 250, 'Clothing', 2, 450.00, '2024-06-28');

SELECT SUM(quentity) AS total_quentity FROM sales;
SELECT COUNT(*) AS total_sales FROM sales;
SELECT AVG(price) AS avg_price FROM sales;
SELECT MIN(price) AS min_price FROM sales;
SELECT MAX(price) AS max_price FROM sales;
SELECT COUNT(DISTINCT customer_id) AS unique_customer FROM sales;
SELECT SUM(quentity * price) AS total_revenue FROM sales;
SELECT AVG(quentity*price) AS avg_revenue FROM sales;
SELECT category,SUM(quentity) AS totaL_qty
FROM sales
group by category;
SELECT category, COUNT(*) AS total_orders
FROM sales
group by category;
SELECT category , MAX(quentity) AS max_qty
FROM sales
group by category;
SELECT category ,SUM(quentity*price) AS tota_revenue
FROM sales
order by category;
SELECT customer_id,COUNT(*) AS orders_count
FROM sales
group by customer_id;
SELECT customer_id ,SUM(quentity*price) AS customer_revenue
FROM sales
group by customer_id;
SELECT product_id ,AVG(quentity) AS avg_qty
FROM sales
GROUP BY product_id;
SELECT category, MIN(price) AS min_price, MAX(price) AS max_price
FROM sales
GROUP BY category;

SELECT product_id, SUM(quentity)
FROM sales
GROUP BY product_id;

SELECT category ,SUM(quentity) AS total_qty
FROM sales
group by category 
HAVING SUM(quentity)>1000;
SELECT customer_id ,COUNT(*) AS order_count
FROM sales
GROUP BY customer_id
HAVING COUNT(*)>5;
SELECT product_id ,AVG(price) AS avg_price
FROM sales
group by product_id
HAVING AVG(price)>500;
SELECT category , SUM(qentity*price) AS total_revenue
FROM sales
GROUP BY category
HAVING SUM(quentity*price) >50000;
SELECT customer_id ,SUM(quentity) AS total_units
FROM sales
GROUP BY customer_id 
HAVING SUM(quentity)>200;
SELECT product_id ,SUM(quentity) AS total_qty
FROM sales
GROUP BY product_id
HAVING SUM(quentity)>100;
SELECT SUM (quentity*price) AS total_2024_revenue
FROM sales
WHERE sales_date LIKE'2024-&';
SELECT category, SUM(quantity)
FROM sales
WHERE strftime('%m', sale_date) = '01'
GROUP BY category;
SELECT customer_id, COUNT(*) AS high_value_orders
FROM sales
WHERE price > 1000
GROUP BY customer_id;
SELECT category, MIN(price), MAX(price), AVG(price)
FROM sales
GROUP BY category;
SELECT category, MIN(price), MAX(price), AVG(price)
FROM sales
GROUP BY category;
SELECT product_id, SUM(quantity), SUM(quantity * price)
FROM sales
GROUP BY product_id;
SELECT customer_id, COUNT(*), MAX(price)
FROM sales
GROUP BY customer_id;
SELECT customer_id, COUNT(*), MAX(price)
FROM sales
GROUP BY customer_id;
SELECT COUNT(*)
FROM (
    SELECT category, AVG(price) AS avg_price
    FROM sales
    GROUP BY category
    HAVING AVG(price) > 500
);
SELECT MAX(customer_revenue)
FROM (
    SELECT customer_id, SUM(quantity * price) AS customer_revenue
    FROM sales
    GROUP BY customer_id
);
SELECT COUNT(DISTINCT category) FROM sales;
SELECT COUNT(DISTINCT category) FROM sales;
SELECT COUNT(DISTINCT product_id) FROM sales;
SELECT strftime('%Y', sale_date) AS year, COUNT(*)
FROM sales
GROUP BY year;
SELECT strftime('%m', sale_date) AS month, SUM(quantity * price)
FROM sales
GROUP BY month;
SELECT sale_date, COUNT(*)
FROM sales
GROUP BY sale_date;
SELECT category, product_id, SUM(quantity * price) AS revenue
FROM sales
GROUP BY category, product_id;
SELECT category, SUM(quantity), AVG(quantity)
FROM sales
GROUP BY category;
SELECT customer_id, AVG(quantity) AS avg_qty
FROM sales
GROUP BY customer_id
HAVING AVG(quantity) > 5;




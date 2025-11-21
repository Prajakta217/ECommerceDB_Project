SELECT * FROM orders;




SELECT * FROM Orders
WHERE user_id IS NULL;

UPDATE Orders
SET user_id = 1
WHERE order_id = 1;

SELECT * FROM orders;
UPDATE Orders
SET user_id = 2
WHERE order_id = 2;

UPDATE Orders
SET user_id = 3
WHERE order_id = 3;


UPDATE Orders
SET user_id = 4
WHERE order_id = 4;

UPDATE Orders
SET user_id = 5
WHERE order_id = 5;

UPDATE Orders
SET user_id = 6
WHERE order_id = 6;

UPDATE Orders
SET user_id = 7
WHERE order_id = 7;

UPDATE Orders
SET user_id = 8
WHERE order_id = 8;

UPDATE Orders
SET user_id = 9
WHERE order_id = 9;

UPDATE Orders
SET user_id = 10
WHERE order_id = 10;
-- Repeat for all NULL user_id orders

SELECT * FROM orders;


SELECT * FROM order_items;


--top selling products


SELECT p.name AS product_name,
       SUM(oi.quantity) AS total_sold,
       SUM(oi.quantity * oi.price) AS total_revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;


--Top 5 Customers by Revenue

SELECT u.name AS customer_name,
       SUM(o.total_amount) AS total_spent
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
GROUP BY u.name
ORDER BY total_spent DESC
LIMIT 5;

--Monthly Revenue

SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(total_amount) AS revenue
FROM Orders
GROUP BY month
ORDER BY month;


--Revenue by Product Category

SELECT c.name AS category_name,
       SUM(oi.quantity * oi.price) AS revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories c ON p.category_id = c.category_id
GROUP BY c.name
ORDER BY revenue DESC;


--Low Stock Products

SELECT name AS product_name, stock
FROM Products
WHERE stock < 25
ORDER BY stock ASC;


--Average Discount Given

SELECT AVG(discount) AS avg_discount
FROM Order_Items;

--Total Orders per User

SELECT u.name AS customer_name,
       COUNT(o.order_id) AS total_orders
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
GROUP BY u.name
ORDER BY total_orders DESC;

--Orders by Payment Method

SELECT payment_method,
       COUNT(*) AS total_orders,
       SUM(total_amount) AS total_revenue
FROM Orders
GROUP BY payment_method
ORDER BY total_revenue DESC;

--Revenue by User Location

SELECT u.location,
       SUM(o.total_amount) AS revenue
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
GROUP BY u.location
ORDER BY revenue DESC;

--Top Products by Revenue

SELECT p.name AS product_name,
       SUM(oi.quantity * oi.price) AS revenue,
       RANK() OVER (ORDER BY SUM(oi.quantity * oi.price) DESC) AS rank
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY rank;



--VIEWS

CREATE OR REPLACE VIEW vw_top_selling_products AS
SELECT p.name AS product_name,
       SUM(oi.quantity) AS total_sold,
       SUM(oi.quantity * oi.price) AS total_revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC;

SELECT * FROM vw_top_selling_products;


CREATE OR REPLACE VIEW vw_monthly_revenue AS
SELECT DATE_TRUNC('month', order_date) AS month,
       SUM(total_amount) AS revenue
FROM Orders
GROUP BY month
ORDER BY month;

SELECT * FROM vw_monthly_revenue;

CREATE OR REPLACE VIEW vw_top_products_ranked AS
SELECT p.name AS product_name,
       SUM(oi.quantity * oi.price) AS revenue,
       RANK() OVER (ORDER BY SUM(oi.quantity * oi.price) DESC) AS rank
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY rank;

SELECT * FROM vw_top_products_ranked;


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
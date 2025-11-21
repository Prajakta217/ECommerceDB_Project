SELECT * FROM orders;

ALTER TABLE Orders
ALTER COLUMN user_id SET NOT NULL;


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
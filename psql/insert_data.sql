INSERT INTO Users (name, email, location, age, gender) VALUES
('Alice', 'alice@example.com', 'Mumbai', 28, 'Female'),
('Bob', 'bob@example.com', 'Pune', 35, 'Male'),
('Charlie', 'charlie@example.com', 'Delhi', 22, 'Male'),
('Diana', 'diana@example.com', 'Bangalore', 30, 'Female'),
('Ethan', 'ethan@example.com', 'Chennai', 40, 'Male'),
('Fiona', 'fiona@example.com', 'Hyderabad', 27, 'Female'),
('George', 'george@example.com', 'Kolkata', 33, 'Male'),
('Hannah', 'hannah@example.com', 'Mumbai', 29, 'Female'),
('Ian', 'ian@example.com', 'Pune', 31, 'Male'),
('Julia', 'julia@example.com', 'Delhi', 25, 'Female');


INSERT INTO Categories (name) VALUES
('Electronics'),
('Furniture'),
('Clothing'),
('Books'),
('Toys');



INSERT INTO Products (name, category_id, brand, price, stock) VALUES
('Laptop', 1, 'Dell', 70000, 50),
('Smartphone', 1, 'Samsung', 30000, 100),
('Desk Chair', 2, 'IKEA', 5000, 20),
('T-Shirt', 3, 'Levis', 1500, 200),
('Book - SQL Basics', 4, 'Reilly', 800, 150),
('Toy Car', 5, 'Hot Wheels', 1200, 80),
('Headphones', 1, 'Sony', 5000, 60),
('Bookshelf', 2, 'IKEA', 8000, 15),
('Jeans', 3, 'Wrangler', 2000, 120),
('Board Game', 5, 'Hasbro', 2500, 50);


INSERT INTO Orders (user_id, order_date, total_amount, payment_method, status) VALUES
(1, '2025-11-01', 75000, 'Credit Card', 'Completed'),
(2, '2025-11-02', 30000, 'UPI', 'Completed'),
(3, '2025-11-03', 6800, 'Debit Card', 'Completed'),
(4, '2025-11-03', 9500, 'Credit Card', 'Pending'),
(5, '2025-11-04', 1500, 'UPI', 'Completed'),
(6, '2025-11-05', 10000, 'Cash', 'Completed'),
(7, '2025-11-06', 12000, 'Credit Card', 'Completed'),
(8, '2025-11-07', 5000, 'Debit Card', 'Cancelled'),
(9, '2025-11-07', 2200, 'UPI', 'Completed'),
(10, '2025-11-08', 12500, 'Credit Card', 'Completed');



INSERT INTO Order_Items (order_id, product_id, quantity, price, discount) VALUES
(1, 1, 1, 70000, 0),
(1, 3, 1, 5000, 0),
(2, 2, 1, 30000, 0),
(3, 4, 2, 1500, 10),
(3, 5, 1, 800, 0),
(4, 7, 2, 5000, 5),
(5, 4, 1, 1500, 0),
(6, 8, 1, 8000, 10),
(6, 3, 1, 2000, 0),
(7, 9, 2, 2000, 5),
(8, 6, 1, 1200, 0),
(9, 5, 2, 800, 0),
(10, 1, 1, 70000, 0),
(10, 10, 2, 2500, 0);


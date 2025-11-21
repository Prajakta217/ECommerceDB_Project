CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    location VARCHAR(100),
    age INT,
    gender VARCHAR(10)
);


CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    category_id INT REFERENCES Categories(category_id),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);


CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(user_id),
    order_date DATE,
    total_amount DECIMAL(10,2),
    payment_method VARCHAR(20),
    status VARCHAR(20)
);


CREATE TABLE Order_Items (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES Orders(order_id),
    product_id INT REFERENCES Products(product_id),
    quantity INT,
    price DECIMAL(10,2),
    discount DECIMAL(5,2)
);


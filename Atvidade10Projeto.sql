CREATE DATABASE IF NOT EXISTS Online_Storie;
USE Online_Storie;

CREATE TABLE IF NOT EXISTS products (
    id_products INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(500),
    price DECIMAL(10,2),
    quantity INT
);

CREATE TABLE IF NOT EXISTS clients (
    id_clients INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(500),
    email_address VARCHAR(1000),
    purchase_historic TEXT
);

CREATE TABLE IF NOT EXISTS requests (
    id_requests INT AUTO_INCREMENT PRIMARY KEY,
    request_date DATE,
    id_clients INT,
    order_status INT,
    INDEX (id_requests)

    FOREIGN KEY (id_clients) REFERENCES clients (id_clients)
);

CREATE TABLE IF NOT EXISTS sale (
    id_sales INT AUTO_INCREMENT PRIMARY KEY,
    Sales DECIMAL (10,2),
    register_date DATE,
    id_requests INT,
    FOREIGN KEY (id_requests) REFERENCES requests (id_requests)
);

INSERT INTO products(name, price) VALUES
('Notebook', 2500.00);

SELECT name, price FROM products WHERE name = 'Notebook' AND price = 2500.00;

SELECT * FROM clients;

UPDATE clients SET name = 'Maria Silva' WHERE id_clients = 1;

DELETE FROM sale WHERE register_date < '2023-01-01';
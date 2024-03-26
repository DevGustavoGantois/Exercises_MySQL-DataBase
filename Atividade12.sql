CREATE DATABASE IF NOT EXISTS Store;
USE Store;

CREATE TABLE IF NOT EXISTS Sellers (
	id_sellers INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS Salles (
	id_salles INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(500),
    salles DECIMAL(10,2)
);

SELECT Sellers.name AS Seller_Name,
IFNULL(Salles.salles, 0) AS Sale_Amount
FROM Sellers
LEFT JOIN Salles ON Sellers.id_sellers = Salles.id_salles;
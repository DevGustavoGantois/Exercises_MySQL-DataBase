CREATE DATABASE IF NOT EXISTS InformacoesPessoaisDB;
USE InformacoesPessoaisDB;

CREATE TABLE IF NOT EXISTS Persons (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    nationality VARCHAR(50),
    email VARCHAR(100),
    marital_status VARCHAR(20),
    father_name VARCHAR(100),
    mother_name VARCHAR(100)
);

INSERT INTO Persons (full_name, age, gender, nationality, email, marital_status, father_name, mother_name)
VALUES ('João Silva', 30, 'Male', 'Brazilian', 'joao@example.com', 'Single', 'José Silva', 'Maria Silva');

INSERT INTO Persons (full_name, age, gender, nationality, email, marital_status, father_name, mother_name)
VALUES ('Maria Souza', 25, 'Female', 'Brazilian', 'maria@example.com', 'Married', 'Carlos Souza', 'Ana Souza');

INSERT INTO Persons (full_name, age, gender, nationality, email, marital_status, father_name, mother_name)
VALUES ('Pedro Santos', 35, 'Male', 'Brazilian', 'pedro@example.com', 'Divorced', 'Paulo Santos', 'Fernanda Santos');

UPDATE Persons
SET age = 26,
    marital_status = 'Divorced'
WHERE ID = 2;

DELETE FROM Persons
WHERE ID = 3;
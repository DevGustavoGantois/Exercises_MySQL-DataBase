CREATE DATABASE IF NOT EXISTS System_clients;
USE System_clients;

-- Criação da tabela requests:
CREATE TABLE IF NOT EXISTS requests (
	id_requests INT,
    requests_date DATE,
    id_clients VARCHAR(5000),
-- Se a verificação do id_clients não for nulo ele vai mostrar a tabela com os clientes
    CONSTRAINT id_clients_not_null CHECK (id_clients IS NOT NULL)
);
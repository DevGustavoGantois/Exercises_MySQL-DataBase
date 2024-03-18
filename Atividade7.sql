--Adicione uma constraint de restrição única na coluna"email" da tabela"clientes"
--para garantir que nenhum
--cliente possa ter o mesmo endereço de e-mail.
CREATE DATABASE IF NOT EXISTS verify_email;
USE verify_email;

CREATE TABLE IF NOT EXISTS clients (
	id_email TEXT UNIQUE,
	id_requests INT,
    id_clients VARCHAR(5000)
); 
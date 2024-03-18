---Crie uma tabela"produtos" com as colunas "id_produto","nome_produto"e"preco". Adicione uma constraint de
---verificação para garantir que o preço do produto seja maior que zero.
CREATE DATABASE IF NOT EXISTS System_of_products;
USE System_of_products;

CREATE TABLE IF NOT EXISTS products (
	id_products INT,
    name_prodcut VARCHAR(5000),
    price DECIMAL (10,2),
    CONSTRAINT check_price CHECK(price > 0)
);
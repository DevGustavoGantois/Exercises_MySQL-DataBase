CREATE DATABASE IF NOT EXISTS peoples_bank;
USE peoples_bank;

CREATE TABLE IF NOT EXISTS People(
	id_peoples INT AUTO_INCREMENT KEY,
    name VARCHAR(500),
    born_date DATE
);

CREATE TABLE IF NOT EXISTS Identity_Documents(
	id_documents TEXT AUTO_INCREMENT PRIMARY KEY,
    Identity_number INT,
    document_type VARCHAR(500),
    CONSTRAINT disponibility_document_identity CHECK (id_document = 'Disponibility'),
    FOREIGN KEY (id_peoples) REFERENCES People(id_peoples)
);

SELECT 
	People.name AS Person_name,
    Identify_Documents.Identity_number AS Identity_Number
FROM
	People
LEFT JOIN
	Identify_Documents ON People.id_peoples = Identity_Documents.id_peoples;
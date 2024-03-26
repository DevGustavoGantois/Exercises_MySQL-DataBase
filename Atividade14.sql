CREATE TABLE IF NOT EXISTS librarys_book;
USE librarys_book;

CREATE TABLE IF NOT EXISTS Authors(
	id_authors INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS Books(
	id_books INT AUTO_INCREMENT PRIMARY KEY,
    titles VARCHAR(500),
    FOREIGN KEY(id_authors) REFERENCES Author(id_authors),
    FOREIGN KEY(id_books) REFERENCES Books(id_books)
);

SELECT 
	Authors.name AS Author_name,
    Books.titles AS Book_Title
FROM
	Authors
JOIN
	Books ON Authors.id_authors = Books.id_authors;
CREATE TABLE IF NOT EXISTS Books(
	id_book INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(500),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    year_publication DATE,
    gender VARCHAR(400)
);

CREATE TABLE IF NOT EXISTS Authors(
	author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(500)
);

CREATE TABLE IF NOT EXISTS Loan(
	loan_id INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (id_book) REFERENCES Books(id_book),
    loan_date DATE,
    devolution_date DATE
);

SELECT
	Authors.author_name AS Author_Name,
    Books.title AS Book_Title,
    Loan.loan_date AS Loan_Date
FROM
	Authors
JOIN
	Books ON Authors.author_id = Books.author_id
JOIN 
	Loan ON Books.id_book = Loan.id_book
ORDER BY
	Authors.author_name ASC, Loan.loan_date ASC;
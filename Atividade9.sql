---Escreva uma consulta que recupere o nome de todos os alunos que tenham mais de 20 anos e que estejam
---matriculados em cursos de"Matemática". Use uma subconsulta para realizar essa tarefa.
CREATE DATABASE IF NOT EXISTS courses;
USE courses;

CREATE TABLE IF NOT EXISTS math_courses (
	names VARCHAR(5000),
    ages INT,
    enrollment VARCHAR(100),
    prices DECIMAL(10, 2)
);

INSERT INTO math_courses(names, ages, enrollment, prices) VALUES
('Gustavo Gantois', 34,'Math', 86.99),
('Billy Jhonson', 22, 'Biology', 99.99),
('Emmie Glass', 19, 'Physiqual', 100.00),
('Eddie Murphy', 20, 'Math', 2000.99);

SELECT names
FROM math_courses
WHERE ages > 20
AND names IN (
	SELECT names
    FROM math_courses
    WHERE enrollment = 'Math'
);
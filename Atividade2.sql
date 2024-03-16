CREATE DATABASE IF NOT EXISTS school2;
USE school2;

CREATE TABLE IF NOT EXISTS students (
	id_student INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200),
    age INT
);

CREATE TABLE IF NOT EXISTS courses (
	id_course INT AUTO_INCREMENT PRIMARY KEY,
    name_course VARCHAR(300),
    workload INT
);

CREATE TABLE IF NOT EXISTS enrollment (
	id_registration INT AUTO_INCREMENT PRIMARY KEY,
    id_student INT,
    id_course INT,
    date_registration DATE,
    
    FOREIGN KEY (id_student) REFERENCES students(id_student),
    FOREIGN KEY (id_course) REFERENCES courses(id_course)
);

-- Criação do truncate table para 'esconder' o banco de dados
TRUNCATE TABLE enrollment;
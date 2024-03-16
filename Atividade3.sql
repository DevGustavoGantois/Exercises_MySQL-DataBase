CREATE DATABASE IF NOT EXISTS school3;
USE school3;

CREATE TABLE IF NOT EXISTS students(
	id_student INT PRIMARY KEY,
    name VARCHAR(150),
    age INT
);

CREATE TABLE IF NOT EXISTS courses(
	id_course INT PRIMARY KEY,
    name_course varchar(100),
    workload INT
);

CREATE TABLE IF NOT EXISTS enrollment(
	id_registration INT PRIMARY KEY,
    id_student INT,
    id_course INT,
    registration_date DATE,
    
    FOREIGN KEY(id_student) REFERENCES students(id_student),
    FOREIGN KEY (id_course) REFERENCES courses(id_course)
);

-- Faça o backup dos dados copiando as tabelas do banco de dados 'escola'.
INSERT INTO school3.students SELECT * FROM school.students;
INSERT INTO school3.courses SELECT * FROM school.courses;
INSERT INTO school3.enrollment SELECT * FROM school.enrollment;

-- Exluindo o banco de dados 'escola'
DROP DATABASE school;
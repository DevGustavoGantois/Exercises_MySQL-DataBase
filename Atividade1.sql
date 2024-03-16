-- Criação do banco de dados 'escola' 
CREATE DATABASE IF NOT EXISTS School;
USE school;

-- Criação da tabela 'alunos'
CREATE TABLE IF NOT EXISTS students (
	id_student INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

-- Criação da tabela 'cursos'
CREATE TABLE IF NOT EXISTS courses (
	id_course INT AUTO_INCREMENT PRIMARY KEY,
    name_course VARCHAR(300),
    workload INT
);

-- Criação de tabela 'matriculas'
CREATE TABLE IF NOT EXISTS enrollment (
	id_registration INT AUTO_INCREMENT PRIMARY KEY,
    id_student INT,
    id_course INT,
    id_registration_date DATE,
    FOREIGN KEY (id_student) REFERENCES students(id_student),
    FOREIGN KEY (id_course) REFERENCES courses(id_course)
);
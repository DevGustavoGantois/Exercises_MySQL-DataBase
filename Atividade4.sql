-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS System_of_school;
USE System_of_school;

-- Criação da tabela de alunos
CREATE TABLE IF NOT EXISTS students(
	number_enrollment INT PRIMARY KEY,
    name varchar(200),
    age INT,
    address varchar(300)
);

-- Criação da tabela dos professores
CREATE TABLE IF NOT EXISTS teachers(
	number_enrollment INT PRIMARY KEY,
    name varchar(200),
    specialty varchar(500),
    address varchar(500) -- Corrigido: "address" em vez de "adress"
);

-- Criação da tabela das turmas
CREATE TABLE IF NOT EXISTS classes(
	identify int PRIMARY KEY,
    start_time_of_the_week TIME,-- Time usado para representar o horário de início 
    day_of_the_week VARCHAR(20) -- Armazenando o dia da semana
);

-- Criação das tabelas das disciplinas
CREATE TABLE IF NOT EXISTS discipline(
	identify INT PRIMARY KEY,
    name varchar(200),
    quantity_classes INT,
    number_enrollment_student INT, -- Chave estrangeira referenciando o número de matrícula do aluno
    number_enrollment_teacher INT, -- Corrigido: "number_enrollment_teacher" em vez de "number dematricula"
    class_identify INT, -- Chave estrangeira referenciando o identificador da turma
    
    FOREIGN KEY (number_enrollment_student) REFERENCES students(number_enrollment),
    FOREIGN KEY (number_enrollment_teacher) REFERENCES teachers(number_enrollment),
    FOREIGN KEY (class_identify) REFERENCES classes(identify)
);
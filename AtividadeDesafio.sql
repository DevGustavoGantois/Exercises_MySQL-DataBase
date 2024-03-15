-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS Infinity_School;
USE Infinity_School;

-- Criação da tabela de alunos
CREATE TABLE IF NOT EXISTS alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    endereco VARCHAR(200)
);

-- Criação da tabela de turmas
CREATE TABLE IF NOT EXISTS turmas (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(200)
);

-- Criação da tabela de salas
CREATE TABLE IF NOT EXISTS salas (
    id_sala INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    capacidade INT
);

-- Criação da tabela de administração
CREATE TABLE IF NOT EXISTS administracao (
    id_admin INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(100)
);
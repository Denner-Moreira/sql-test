-- Criação do banco de dados ESCOLA
CREATE DATABASE ESCOLA;

-- Seleção do banco de dados ESCOLA
USE ESCOLA;

-- Criação da tabela ALUNO
CREATE TABLE ALUNO (
  ID INT AUTO_INCREMENT PRIMARY KEY,
  NOME VARCHAR(100) NOT NULL,
  EMAIL VARCHAR(100),
  ENDERECO VARCHAR(255)
);
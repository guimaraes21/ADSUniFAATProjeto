CREATE DATABASE Escola;

CREATE TABLE Aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_turma INT,
    nome_responsavel VARCHAR(255) NOT NULL,
    telefone_responsavel VARCHAR(20) NOT NULL,
    email_responsavel VARCHAR(100) NOT NULL,
    informacoes_adicionais TEXT,
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);

CREATE TABLE Turma (
    id_turma SERIAL PRIMARY KEY,
    nome_turma VARCHAR(50) NOT NULL,
    id_professor INT,
    horario VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);


CREATE TABLE Professor (
    id_professor SERIAL PRIMARY KEY,
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

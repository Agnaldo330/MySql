create database biblioteca;
use biblioteca;

CREATE TABLE autores (    id_autor INT AUTO_INCREMENT PRIMARY KEY,    nome VARCHAR(100) NOT NULL,    pais VARCHAR(50));
CREATE TABLE livros (    id_livro INT AUTO_INCREMENT PRIMARY KEY,    titulo VARCHAR(150) NOT NULL,    ano_publicacao INT,    id_autor INT,    CONSTRAINT fk_autor    FOREIGN KEY (id_autor)    REFERENCES autores(id_autor));
CREATE TABLE leitores (    id_leitor INT AUTO_INCREMENT PRIMARY KEY,    nome VARCHAR(100), email VARCHAR(100));
CREATE TABLE emprestimos (    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,    id_livro INT,    id_leitor INT,    data_emprestimo DATE,    data_devolucao DATE,    FOREIGN KEY (id_livro)    REFERENCES livros(id_livro),    FOREIGN KEY (id_leitor)    REFERENCES leitores(id_leitor));
CREATE TABLE comentarios (    id_comentario INT AUTO_INCREMENT PRIMARY KEY,    id_livro INT,    comentario TEXT,    data_comentario DATE,    FOREIGN KEY (id_livro)    REFERENCES livros(id_livro));

INSERT INTO autores (nome, pais)VALUES ('Machado de Assis', 'Brasil');
INSERT INTO livros (titulo, ano_publicacao, id_autor)VALUES ('Dom Casmurro', 1899, 1);
INSERT INTO leitores (nome, email)VALUES ('Agnaldo', 'agnaldo@email.com');
INSERT INTO emprestimos (id_livro, id_leitor, data_emprestimo)VALUES (1, 1, '2026-03-16');

select livros.titulo, autores.nome
from livros
join autores
on livros.id_autor = autores.id_autor;


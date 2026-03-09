-- comando criando banco de dados
create database curso;

-- comando para entrar no banco de dados onde quero criar a tabela
use curso;

-- criando uma tabela
create table alunos(
codigo int not null auto_increment,
nome varchar(20) not null,
telefone char(8) not null,
primary key(codigo)
);
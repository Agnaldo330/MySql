-- comando apra entrar no banco de dados
use curso;

-- adicionando um campo (atributo)
alter table alunos add column email varchar(20);

-- Apagando um campo(atributo)
alter table alunos drop column email;

-- comando para alterar o tipo de dados de um campo
alter table alunos modify column nome varchar(100);

-- comando para renomear coluna
alter table alunos change column telefone contato varchar(50);

-- comando para renomear uma tabela
alter table alunos rename to turma;

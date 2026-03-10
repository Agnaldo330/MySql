-- entrando no banco de dados empresa
use empresa;

-- criando a tabela departamento_projeto
create table departamento_projeto (
numero_depto int not null,
numero_projeto int not null
);

-- mostrando todos os dados
select * from departamento_projeto;

-- inserindo os dados
insert into departamento_projeto values
(2,5),(3,10),(2,20);

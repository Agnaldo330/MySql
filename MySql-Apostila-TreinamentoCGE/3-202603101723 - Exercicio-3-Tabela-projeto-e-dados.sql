-- acessando banco de dados empresa
use empresa;

-- exibindo todos os dados da tabela projeto
select * from projeto;

-- criando a tabela projeto
create table projeto (
Nome varchar(20) not null,
Numero int not null,
Localizacao varchar(20)
);

-- inserindo os dados
insert into projeto values
('Financeiro 1',5,'São Paulo'),
('Motor 3',10,'Rio Claro'),
('Prédio Central',20,'Campinas');
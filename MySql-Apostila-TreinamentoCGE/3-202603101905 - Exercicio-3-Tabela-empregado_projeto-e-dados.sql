-- entrando no banco de dados empresa
use empresa;

-- criando a tabela empregado_projeto
create table empregado_projeto (
RG varchar(20) not null,
Numero_Projeto int not null,
horas int not null
);

-- exibindo todos os dados
select * from empregado_projeto;

-- inserindo dados
insert into empregado_projeto values
('20202020',5,10),
('20202020',10,25),
('30303030',5,35),
('40404040',20,50),
('50505050',20,35);
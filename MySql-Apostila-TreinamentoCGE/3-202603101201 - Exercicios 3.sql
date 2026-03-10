-- Utilizando  o  mysql  transforme  a  tabela  à  seguir  em  umatabela  chamada  clientes  dentro  de  seu  banco  de  dados.  Faça  astarefas  abaixo:
-- Entrando no banco de dados
use curso;

-- Tabela Clientes
create table clientes (
Codigo_Cliente int(8) not null,
RG_Mae varchar(20) not null,
Nome_Dependente varchar(50) not null,
Dt_Nascimento varchar(10) not null,
Relacao varchar(20) not null,
Sexo varchar(20) not null,
primary key(Codigo_Cliente)
);

alter table clientes modify Codigo_Cliente int(7) not null;
alter table clientes modify Dt_Nascimento char(10);
desc clientes;

update clientes
set Dt_Nascimento = 271246
where Dt_Nascimento = 1907;

-- a- Insira os dados na tabela.
insert into clientes values
(2,10101012,'Edson',271246,'Filho','Masculino'),
(3,10105710,'Luiz','18/11/49','Filho','Masculino')
;



-- b-  Calcule  quantos  clientes  existem  na  tabela.
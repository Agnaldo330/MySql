-- acessando banco de dados empresa
use empresa;

-- Mostrando todos os dados
select * from departamento;

-- criando a tabela departamento
create table departamento (
nome varchar(40) not null,
numero int not null,
RG varchar(20) not null
);

-- alterando campo da tabela deparamento RG para RG_Gerente
alter table departamento change column RG RG_Gerente varchar(20);
desc departamento;

-- inserindo os dados
insert into departamento values
('Contabilidade',1,'10101010'),
('Engenharia Civil',2,'30303030'),
('Engenharia Mecanica',3,'20202020');
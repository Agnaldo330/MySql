-- Criando banco de dados empresa
create database empresa;

-- acessando banco de dados empresa
use empresa;

-- Criando a tabela empregado
create table empregado (
Nome varchar(50) not null,
RG varchar(20) not null,
CIC varchar(20) not null,
Depto int not null,
RG_Supervisor varchar(20) not null,
Salario varchar(20) not null
);

-- Mostrando todos os dados
select * from empregado;

-- inserindo os dados na tabela empregdo
insert into empregado values
('João Luiz','10101010','11111111',1,'NULO','3.000,00');
insert into empregado values
('Fernando','20202020','22222222',2,'10101010','2.500,00'),
('Ricardo','30303030','33333333',2,'10101010','2.300,00'),
('Jorge','40404040','44444444',2,'20202020','4.200,00'),
('Renato','50505050','55555555',3,'20202020','1.300,00');
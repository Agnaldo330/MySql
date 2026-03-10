-- entrando no banco de dados curso
use curso;
select * from clientes;

-- Criando a tabela cliente
create table clientes (
Codigo_Clientes int not null,
Rg_Mae varchar(20) not null,
Nome_Dependente varchar(50) not null,
Dt_Nascimento varchar(20) not null,
Relacao varchar(50) not null,
Sexo varchar (50) not null
);

-- inserindo os dados de uma maneira rápida
insert into clientes values
(2,'10101012','Edson','27/12/46','Filho','Masculino'),
(3,'10105710','Luiz','18/11/49','Filho','Masculino'),
(4,'20232020','Flavia','14/02/89','Conjugue','Feminino'),
(5,'20232020','Angelo','10/02/45','Filho','Masculino'),
(6,'30333030','Fernanda','01/06/80','Filho','Feminino'),
(7,'10101010','Jorge','27/12/76','Filho','Masculino'),
(8,'10101010','Mauro','18/11/72','Filho','Masculino'),
(9,'10101010','Larisa','14/02/79','Conjugue','Feminino'),
(10,'23202020','Antunes','10/02/45','Filho','Masculino'),
(11,'30341030','Maria','01/05/70','Filho','Feminino'),
(12,'10101341','João','27/12/76','Filho','Masculino'),
(13,'30101010','Mario','18/11/89','Filho','Masculino'),
(14,'10101010','Gisele','14/02/79','Conjugue','Feminino'),
(15,'34202020','Arnaldo','10/02/85','Filho','masculino'),
(16,'10101010','Katia','01/05/70','Filho','Feminino'),
(17,'10105710','José','27/12/46','Conjugue','Masculino'),
(18,'78801010','Luiz','18/11/75','Filho','Masculino'),
(19,'20202032','Fabiana','25/02/89','Conjugue','Feminino'),
(20,'78501010','Anisio','10/02/94','Filho','Masculino'),
(21,'76503030','Marcela','01/06/97','Filho','Feminino');

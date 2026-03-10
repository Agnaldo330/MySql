-- entrando no banco de dados empresa
use empresa;

-- Exibindo todos os dados da tabela dependentes
select * from dependente;

-- Criando a tabela dependente
create table dependente (
Rg_Responsavel varchar(20) not null,
Nome_Dependente varchar(50) not null,
Dt_Nascimento varchar(20) not null,
Relacao varchar(50) not null,
Sexo varchar (50) not null
);

-- exibindo a estrutura da tabela
desc dependente;

-- inserindo os dados
insert into dependente values
('10101010','Jorge','27/12/86','Filho','Masculino'),
('10101010','Luiz','18/11/79','Filho','Masculino'),
('20202020','Fernanda','14/02/69','Conjugue','Feminino'),
('20202020','Angelo','10/02/96','Filho','Masculino'),
('30303030','Adréia','01/05/90','Filho','Feminino');
-- comando par entrar no banco de dados
use curso;

create table funcionarios(
nome varchar(40) not null,
rg int(8) not null,
cic varchar(12) not null,
depto varchar(20) not null,
rgsupervisor varchar(10) not null,
salario varchar(5) not null,
primary key(rg)
);

insert into funcionarios values('joao luiz',10101010,11111111,1,102030,3000);
insert into funcionarios value('Fernando',20202020,22222222,2,10101010,2500);
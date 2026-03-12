use comercial;

-- criando a tabela comvende
create table comvende (
n_numevende int not null auto_increment,
c_codivende varchar(10),
c_nomevende varchar(100),
c_razavende varchar(100),
c_fonevende varchar(20),
n_porcevende float(10,2),
primary key(n_numevende));
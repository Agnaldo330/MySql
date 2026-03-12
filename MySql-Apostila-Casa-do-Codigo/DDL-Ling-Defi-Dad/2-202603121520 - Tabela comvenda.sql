-- criando a tabela comvenda
create table comvenda (
n_numevenda int not null auto_increment,
c_codivenda varchar(10),
n_numeclien int not null,
n_numeforne int not null,
n_numevende int not null,
n_valovenda float(10,2),
n_descvenda float(10,2),
n_totavenda float(10,2),
d_datavenda date,
primary key (n_numevenda));
use comercial;

-- criando a tabela comclien
create table comclien (
n_numeclien int not null auto_increment,
c_codiclien varchar(10),
c_nome_clien varchar(100),
c_razaclien varchar(100),
d_dataclien date,
c_cnpjclien varchar(20),
c_forneclien varchar(20),
primary key (n_numeclien));	
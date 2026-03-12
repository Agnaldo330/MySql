-- criando a tabela comivenda
create table comivenda (
n_numeivenda int not null auto_increment,
n_numevenda int not null,
n_numeprodu int not null,
n_valorivenda float(10,2),
n_qtdeivenda int,
n_descivenda float(10,2),
primary key (n_numeivenda));
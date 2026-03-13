-- entrando no banco de dados comercial
use comercial;

-- adicionando campo a tabela comclien
alter table comclien add column c_cidaclien varchar(50);

-- adicionando mais um campo para estado
alter table comclien add column c_estclien varchar(50);

-- deletando o campo fora do padrão c_estclien
alter table comclien drop column c_estclien;

-- Agora criando o campo no padrão correto da tabela comclien 
alter table comclien add column c_estaclien varchar(50);

-- alterando o nome de um campo da tabela comclien
alter table comclien change column c_nome_clien c_nomeclien varchar(100);

-- alterando o tipo de dado de campo caso quisesse
-- alter table comclien modify column c_estaclien int;

-- alterando tambem o tamanho do campo se quiser:
-- alter table comclien modify column c_estaclien varchar(100);
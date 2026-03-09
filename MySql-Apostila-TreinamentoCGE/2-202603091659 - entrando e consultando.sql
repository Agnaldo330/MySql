-- entrar no banco de dados curso
use curso;

-- criando a tabela compras
create table compras(
artigo int(4) unsigned zerofill default '0000' not null,
vendedor char(20) default '0000' not null,
preco double(16,2) default '0.00' not null,
primary key(artigo, vendedor));

-- uma forma mais rápida de inserir valores(dados) em uma tabela
insert into compras values
(1,'A',3.45),(1,'B',3.99),(2,'B',3.99),(3,'B',1.45),(3,'C',1.69),(3,'D',1.25),(4,'D',19.95);

-- qual o maior valor na tabela compras no campo artigo
select max(artigo) as artigo from compras;


-- Obtem  o  valor  máximo  e  avalia  a  tabela  com  umadeclaração  SELECT
select artigo, vendedor, preco
from compras
where preco=19.95;

-- Para  selecionar  o  valor  máximo  da  coluna:  por  grupo  e  por valores
select artigo, max(preco) as preco
from compras
group by artigo;
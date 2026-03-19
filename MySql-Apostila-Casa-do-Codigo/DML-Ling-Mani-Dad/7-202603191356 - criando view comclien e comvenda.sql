-- criando uma view envolvendo duas tabelas: comclien e comvenda, chamada de clientes_vendas
create or replace view clientes_vendas as
select
c_razaclien,
c_nomeclien,
c_cnpjclien,
c_codivenda,
n_totavenda,
d_datavenda
from comclien, comvenda
where comclien.n_numeclien = comvenda.n_numeclien
order by 1;

select * from clientes_vendas;
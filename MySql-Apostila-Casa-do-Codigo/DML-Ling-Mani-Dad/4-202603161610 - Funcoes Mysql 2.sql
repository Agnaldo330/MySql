-- valor da mair venda feira
select max(n_totavenda) maior_venda from comvenda;

-- menor venda
select min(n_totavenda) menor_venda from comvenda;

-- as duas ao mesmo tempo
select min(n_totavenda) menor_venda, max(n_totavenda) maior_venda from comvenda;

-- somando valores entre datas
select sum(n_valovenda) valor_venda,
sum(n_descvenda) descontos,
sum(n_totavenda) total_venda
from comvenda
where d_datavenda between '2015-01-01' and '2015-03-01';

select * from comvenda;

-- somando todos os campo em coluna de valor da venda e total venda
select sum(n_valovenda), sum(n_totavenda) from comvenda;

-- calculando 	a media de todas as vendas
select format(avg(n_totavenda),2) from comvenda;
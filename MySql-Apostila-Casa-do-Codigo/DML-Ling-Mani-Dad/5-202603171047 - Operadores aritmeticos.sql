-- multiplicando a quantidade de um produto por seu valor
select (n_qtdeivenda * n_valorivenda) multiplicacao
from comivenda
where n_numeivenda = 4;

select * from comivenda;
desc comivenda;
select sum(n_valorivenda) from comivenda;
select count(n_numeivenda) from comivenda;

-- somar todos os valores de produtos dos itens das vendas e dividir pelo número de itens vendidos.
select truncate((sum(n_valorivenda) / count(n_numeivenda)),2) divisão from comivenda;

-- somando valor da venda por desconto
select (n_valorivenda + n_descivenda) adição
from comivenda
where n_numeivenda = 4;

-- subtraindo valor da venda pelo desconto
select (n_valorivenda - n_descivenda) subtração
from comivenda
where n_numeivenda = 4;
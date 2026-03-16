use comercial;

-- selecionando codigo e razao cliente das tabelas venda e cliente onde:
-- o numero do cliente tabela venda é igual o numero cliente tabela 
-- so que aqui sem o group by registro aparece repetidos
select c_codiclien, c_razaclien from comvenda, comclien
where comvenda.n_numeclien = comclien.n_numeclien
order by c_razaclien;

-- agora usando o group by na mesma consulta acima
select c_codiclien, c_razaclien from comvenda, comclien
where comvenda.n_numeclien = comclien.n_numeclien
group by c_codiclien, c_razaclien
order by c_razaclien;

-- quando o mesmo cliente compra mais de um produto ele aparece mais de uma vez na tabela venda
-- agora usando o comando count()
select c_codiclien, c_razaclien, count(n_numevenda) Qtde from comvenda, comclien
where comvenda.n_numeclien = comclien.n_numeclien
group by c_codiclien, c_razaclien
order by c_razaclien;

-- contando todas a linhas da tabela cliente
select count(*) Clientes from comclien;

-- agora usando o having count para afinar mais as consultas
select c_razaclien, count(n_numevenda)
from comclien, comvenda
where comvenda.n_numeclien = comclien.n_numeclien
group by c_razaclien
having count(n_numevenda) > 2; -- aqui esta a diferenca de usar o having com o count
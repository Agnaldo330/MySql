-- acessando o banco de dados comercial
use comercial;

-- selecionando todos os dados da tabela comclien
select * from comclien;

-- selecionando todos os cliente comvenda
select * from comvenda;

-- selecionando somente o numero, codigo e razão social do cliente
select n_numeclien, c_codiclien, c_razaclien from comclien;

-- selecionando o numero, codigo e razão social do cliente apenas do cliente 0001 com a condição where
select n_numeclien, c_codiclien, c_razaclien from comclien where c_codiclien = '0001';

-- selecionando o numero, codigo e razão social diferente de 0001 com a condição where e usando operador de comparação <>
select n_numeclien, c_codiclien, c_razaclien from comclien where c_codiclien <> '0001';

-- selecionando o numero, codigo e razão social que começa com a letra L usando o comando like
-- o "%" (por centro) é um coringa
select n_numeclien, c_codiclien, c_razaclien from comclien where c_razaclien like 'L%';

-- selecionando todos os clientes que compraram algo
-- neste comando se um cliente comprar mais de uma coisa o dado retornaria repetido
select n_numeclien from comvenda;
-- selecionando todos os clientes que compraram algo com o comando distinct
-- com o disticnt esse dados não se repete
select distinct n_numeclien from comvenda;

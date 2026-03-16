-- erro do código. Só pode usar o = quando a comparação for só um valor
select c_codiclien, c_razaclien from comclien where n_numecomclien = 1,2;

-- aqui fiz uma consulta mostrando dois valores da mesma tabela usando o comando in com where
select c_codiclien, c_razaclien from comclien where n_numeclien in (1,2);

-- Aqui estou usando o mesmo comando acima só que ao contrario usando o comandi not in
-- ele vai exibir tdos que não sejam o registro 1 e 2
select c_codiclien, c_razaclien from comclien where n_numeclien not in (1,2);

-- retornar a razão social dos clientes que possuem registro na tabela comvenda fazendo comparação
select c_razaclien from comclien where n_numeclien in (select n_numeclien from comvenda where n_numeclien);

-- clientes que não aoarecem na tabela comvenda ou não compraram nada
select c_razaclien from comclien where n_numeclien not in (select n_numeclien from comvenda where n_numeclien);

-- clientes que fizeram compras no comvenda exibindo seus codigos de venda e seus nomes
-- aparecem repetidos porque um cliente por exemplo fez tres compras
select c_codivenda Cod_Venda,
(select c_razaclien from comclien where n_numeclien = comvenda.n_numeclien)
Nome_Cliente from comvenda;

-- usando alias como apelido dos rotulos dos campos
select c_codiclien CODIGO, c_nomeclien CLIENTE from comclien where n_numeclien not in (1,2,3,4);

-- usando consultas e subconsultas sem o ALIAS
select c_codivenda,
(select c_razaclien from comclien where n_numeclien = comvenda.n_numeclien) from comvenda;

-- Agora usando o ALIAS
select c_codivenda Cod_Venda,
(select c_razaclien from comclien where n_numeclien = comvenda.n_numeclien) Nome_Cliente from comvenda;

-- JOIN

-- consultas odenadas por group by esse é o modo JOIN
select c_codiclien , c_razaclien, c_codivenda Cod_Venda from comvenda, comclien
where comvenda.n_numeclien = comclien.n_numeclien order by c_razaclien;

-- maneira formal de se fazer o join mas não é muito usual (com alias)
select c_codiclien codigo, c_razaclien razao_social, c_codivenda codi_venda
from comvenda
join comclien on
comvenda.n_numeclien = comclien.n_numeclien order by c_razaclien;


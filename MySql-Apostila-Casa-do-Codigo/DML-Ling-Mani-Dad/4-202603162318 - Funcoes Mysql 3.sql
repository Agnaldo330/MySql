--  Com este comando, falamos para o SGBD que queremos os registros que possuem o
-- código da posição 1 até a posição 3 com a sequência de caracteres 123.
select c_codiprodu, c_descprodu from comprodu
where substr(c_codiprodu,1,3) = '123'
and length(c_codiprodu) > 4; -- aqui ele conta quantos caracteres o código tem

select substr(c_razaclien,1,5) Razao_Social,
length(c_codiclien) Tamanho_Cod -- aqui ele conta quantos caractere tem o codigo do produto
from comclien
where n_numeclien = 1;

-- concatenando campos
select concat(c_razaforne,' - fone: ', c_forneforne)
from comforne
order by c_razaforne;

select * from comforne;

-- aqui no concat_ws devemos usar o separador manualmente para concatenar os campos
-- percebe que esses espaços em branco é o separador (esta com espaço duplo)
select concat(c_codiclien,'  ',c_razaclien, '  ', c_nomeclien)
from comclien
where c_razaclien like 'GREA%';

-- aqui esta usando o concat_ws dessa maneira ja colocando o separador no começo e só uma vez
select concat_ws(' ; ',c_codiclien, c_razaclien, c_nomeclien)
from comclien
where c_razaclien like 'GREA%';

-- colocando as letras todas minusculas no campo razao_cliente
select lcase(c_razaclien) from comclien;

-- colocando todas maiusculas no campo razao_cliente
select ucase(c_razaclien) from comclien;
select ucase('banco de dados mysql') from dual;


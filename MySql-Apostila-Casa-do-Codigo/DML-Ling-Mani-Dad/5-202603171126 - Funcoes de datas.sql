-- retornar a data atual
select curdate() 'Data Atual';

-- retornar a data e a hora atual
select now() 'Data e Hora Atual';

-- semelhante ao now();
select sysdate() 'Data e Hora Atual';

-- retornar somente a hora atual
select curtime() 'Hora Atual';

-- retornar itervalo de tempo entre datas e hora (tem que colocar a data ao inverso)
select datediff('2026-03-31 23:59:59','2026-03-17');

-- adicionar ontervalo de dias contatdos a partira da data digitada
select date_add('2026-03-17', interval 31 day);

-- retornar o nome do dia da semana em vez de apenas a data com número
select dayname('2026-03-17'); -- tem que colocar entre apostrofos

-- para retornar o dia do mes em número
select dayofmonth('2026-03-17');

-- extrair o ano da data
select extract(year from '2026-03-17');

-- extrair o ultimo dia do mês
select last_day('2026-03-17');


-- formatando a data para o padrão EUR;
select date_format('2026-03-17',get_format(date,'EUR')) 'Formato Europa';

-- em caso de precisar converter um formato de data para outro banco de dados diferente
select str_to_date('01.02.2015',get_format(date,'USA')) 'Padrão USA';


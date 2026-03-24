-- esquema para descobrir o nome das tabelas e banco de dados onde se tem muitas tabelas
select table_schema Banco_Dados,
table_name tabela,
column_name nome_coluna
from information_schema.columns
where table_schema = 'comercial'
and column_name = 'n_numeclien';

-- essa é uma otra maneira de descobrir com a diferença do @banco e @coluna
select table_schema Banco_Dados,
table_name tabela,
column_name nome_coluna
from information_schema.columns
where table_schema = @banco
and column_name = @coluna;
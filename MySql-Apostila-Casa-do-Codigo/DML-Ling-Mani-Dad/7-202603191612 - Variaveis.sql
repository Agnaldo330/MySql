-- mostrando todas as variaves do mysql
show variables;

-- mudando o valor das variaveis
set lower_case_table_names = 2;

-- mostrar os processos sendo executados(ativos)
show processlist;

-- matando processos ativos
-- no caso o o que ten o id 48
kill 48;
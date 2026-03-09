-- selecionar quantas pessoas existem cadastradas
select count(*) from funcionarios;

-- selecionar quantos funcionarios existem no departamento 3
select count(*) from funcionarios where depto=3;

-- selecionar o nome e o rg dos funcionarios que ganham mais de 3000 reais
select nome, rg from funcionarios where salario>3000;

-- organizar a consulta por ordem decrescente
select * from funcionarios order by nome desc;
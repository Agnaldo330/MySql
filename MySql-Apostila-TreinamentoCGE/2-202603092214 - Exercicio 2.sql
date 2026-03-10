use curso;
-- Exercicios

-- insira dados na tabela funcionarios
		-- ja foi feito
        
-- crir uma instrução SQL para que o funcionario jorge ricardo tenha 
-- um aumento de 50% em seu salario
update funcionarios set salario=salario+salario*0.5 where nome='Jorge Ricardo';

-- Crie  uma  instrução  SQL  que  mostre  quantos  funcionários ganham  mais  que  R$  1500
select count(*) from funcionarios where salario>1500;
select nome, salario from funcionarios where salario > 1500;

-- Crie uma instrução SQL que mostra o nome e o  salário dos funcionários  que  trabalham  no  depto  2
select nome, salario, depto from funcionarios where depto=2;

-- Atualize o banco de dados para funcionarios que ganham mais que R$ 2000, descontando 15% de seus salários
update funcionarios set salario=salario-salario*0.15 where salario>2000;

-- Dado  o  comando  abaixo  faça  o  desenho  de  como  ficará essa tabela no banco de dados.

CREATE TABLE armazem(
item INT(6) NOT NULL AUTO_INCREMENT,
vendedor CHAR(20) NOT NULL,
preco DOUBLE(16,2) NOT NULL,
fornecedor INT(6) NOT NULL,
PRIMARY KEY(item));

-- fazendo o desenho
desc armazem;

-- Dada a tabela funcionarios e o comando abaixo diga qual será o resultado da operação.
DELETE  FROM  funcionarios  WHERE  depto=1;
-- o funcionario Jorge Luiz do departamento 1 sera deletado da tabela funcionarios
select * from funcionarios;

-- Utilizando a mesma tabela do exercício 3 crie uma instrução que apaga os funcionários que ganham menos de R$ 2000.
delete from funcionarios where salario < 2000;

-- Apague todos as linhas e em seguida a tabela funcionarios.
delete from funcionarios;
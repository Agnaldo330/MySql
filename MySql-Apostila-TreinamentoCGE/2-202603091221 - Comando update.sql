-- comando para entrar no banco de dados
use curso;

-- mudando os funcionarios do departamento 3 para o departamento 5
UPDATE funcionarios
SET depto = 5
WHERE depto = 3;

-- aumento de 20% oara funcionarios que ganham menos que 3000 mil reais
update funcionarios set salario=salario+salario*0.2 where salario<3000;
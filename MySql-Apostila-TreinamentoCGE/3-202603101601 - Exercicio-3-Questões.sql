-- entrando no banco de dados
use curso;
desc clientes;
select * from clientes;

-- a - Insira os dados!
	-- ja feito

-- b - calcule quantos clientes existem na tabela
	select count(*) from clientes;
    
-- c - Calcule quantos clientes do sexo feminino existem na tabela
	select count(*) from clientes where Sexo = 'Feminino';
    
-- d- Crie uma seleção em que serão exibidos os nomes e RG da mãe dos clientes que são filhos no campo relação
	select Nome_Dependente, Rg_Mae from clientes where Relacao = 'Filho';
    
-- e - Calcule quantos clientes são do sexo masculino e filhos no campo  relação.
	select count(*) from clientes where Sexo = 'Masculino' and Relacao = 'Filho';
    
-- f - Altere a data de nascimento para 15/11/1980 do cliente comcódigo igual a 12
	update clientes set Dt_Nascimento = '15/11/1980' where Codigo_Clientes = 12;
    
-- g - Selecione os clientes que têm mais de 18 anos, exibindo seus nomes e sexo.
	select Nome_Dependente, Sexo, Dt_Nascimento from clientes where Dt_Nascimento > 18;
    -- eu coloque esse comando ai mas como a apostila é antiga então nao se considerra o tipo de dados date
    -- teria que alterar as datas preenchidas e o tipo de dados dela

-- h - Selecione as clientes que são casadas, exibindo seu nomee sexo, ordenando o resultado pela data de nascimento.
	select Nome_Dependente, Sexo from clientes where Relacao = 'Conjugue' and Sexo = 'Feminino' order by Dt_Nascimento;
    
-- i - Selecione todos os clientes e ordene a seleção em ordem decrescentes pela data de nascimento
	select * from clientes order by Dt_Nascimento;
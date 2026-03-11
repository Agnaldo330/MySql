-- a- Mostre quantos dependentes possuí o empregado de nome João Luiz.
	select count(*) from dependente where RG_responsavel = 10101010;
    
--  b-  Mostre  o  nome  do  responsável  pelo  dependente  nascido em  27/12/86.
SELECT empregado.Nome, dependente.Nome_Dependente, dependente.Dt_Nascimento
FROM empregado
JOIN dependente -- esse comando liga as tabelas
ON empregado.RG = dependente.Rg_Responsavel -- como se fosse uma condição ligando os dois campos que se conecam na consulta
WHERE dependente.Dt_Nascimento = '27/12/86'; -- condiçã da pergunda 

-- c Mostre  de  qual  departamento  é  o  funcionário  de  rg 30303030
select empregado.Depto, empregado.Nome from empregado where RG = '30303030';

-- d-  Quantas  horas  o  empregado  Fernando  trabalhou?
select sum(horas) from empregado_projeto where RG = 20202020;

-- e- Selecione todos os funcionários que trabalham no projeto 5 exibindo seus nomes.
select empregado.Nome
from empregado
join empregado_projeto on empregado.RG = empregado_projeto.RG
where empregado_projeto.Numero_Projeto = 5;

-- f-  Mostre o nome do responsável pelo dependente Angelo.
select empregado.Nome
from empregado
join dependente
on empregado.Nome = dependente.Nome_Dependente
where dependente.Nome_Dependente = 'Angelo';


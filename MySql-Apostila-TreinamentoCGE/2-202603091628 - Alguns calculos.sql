-- calculando no mysql
select sin(pi()/4), (4+1)*5;

-- Versão do mysql
select version ();

-- mostra a data completa
select now();

-- mostra a versão e a data
SELECT  VERSION(),  CURRENT_DATE;

-- o mysql entende quando um determinado comando de varias linhas não esta completo e fica esperando o resto ser digitado com o simbolo ->
select
user()
,
current_date();
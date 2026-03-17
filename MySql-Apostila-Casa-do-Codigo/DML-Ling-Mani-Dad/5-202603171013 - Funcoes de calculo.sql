use comercial;

-- arredondando para duas casa decimal
select round('213.142',2) from dual;

-- formatando e arredondando o campo pra duas casas decimais - mesmo efeito acima
select format('21123.142',2) from dual;

-- o truncate esconde as casas decimais apos a virgula
select truncate(max(n_totavenda),0) maior_venda from comvenda;
select max(n_totavenda) from comvenda;

-- o truncate esconde as casas decimais apos a virgula nesse caso ele deixa aparecer uma
-- a diferenca pra os demais acima é que p truncate não arredonda os numeros
select truncate(min(n_totavenda),1) menor_venda from comvenda;
select min(n_totavenda) from comvenda; -- so pra testar

-- obtendo a raiz quadrada de 4
select sqrt(4);

-- consultar o valor de pi
select pi();

-- consultar o valor de seno de pi
select sin(pi());

-- consultar o valor de cosseno de pi
select cos(pi());

-- para consultar o valor da tangente de pi + 1
select tan(pi()+1);
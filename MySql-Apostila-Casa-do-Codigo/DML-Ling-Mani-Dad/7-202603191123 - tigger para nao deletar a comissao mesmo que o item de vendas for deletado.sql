delimiter $$
create trigger tri_vendas_bu
before update on comvenda
for each row
begin
declare percentual_comissao float(10,2);
declare total_venda float(10,2);
declare valor_comissao float(10,2);
## No update, verifico se o valor total novo da venda
## é diferente do total anterior, pois se forem iguais,
## não há necessidade do cálculo
if (old.n_totavenda <> new.n_totavenda) then
select rt_percentual_comissao(new.n_numevende)
into percentual_comissao;
## cálculo da comissão
set
valor_comissao = ((total_venda * comissao) / 100);
## recebo no novo valor de comissão
set new.n_vcomvenda = valor_comissao;
end if;
end
$$
delimiter ;
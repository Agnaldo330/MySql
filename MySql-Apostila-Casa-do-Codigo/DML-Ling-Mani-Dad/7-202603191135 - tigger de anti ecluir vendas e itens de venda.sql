delimiter $$
create trigger tri_ivendas_af
after delete on comivenda
for each row
begin
## declaro as variáveis que utilizarei
declare vtotal_itens float(10,2);
declare vtotal_item float(10,2);
declare total_item float(10,2);
## cursor para buscar os itens já registrados da venda
declare busca_itens cursor for
select n_totaivenda
from comivenda
where n_numevenda = old.n_numevenda;
## abro o cursor
open busca_itens;
## declaro e inicio o loop
itens : loop
fetch busca_itens into total_item;
## somo o valor total dos itens(produtos)
set vtotal_itens = vtotal_itens + total_item;
end loop itens;
close busca_itens;
## atualizo o total da venda
update comvenda set n_totavenda = vtotal_itens
where n_numevenda = old.n_numevenda;
end
$$
mysql> delimiter ;
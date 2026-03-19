delimiter $$
create function rt_percentual_comissao(vn_n_numevende int)
returns float
deterministic
begin
declare percentual_comissao float(10,2);
select n_porcvende
into percentual_comissao
from convende
where n_numevende = vn_n_numevende;
return percentual_comissao;
end;
$$
delimiter ;


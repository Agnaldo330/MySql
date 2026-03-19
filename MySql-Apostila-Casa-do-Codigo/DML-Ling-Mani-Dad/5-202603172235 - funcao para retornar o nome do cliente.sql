delimiter $$
create function rt_nome_cliente(vn_numeclien int)
returns varchar(50)
deterministic
begin
declare nome varchar(50);
select c_nomeclien into nome
from comclien
where n_numeclien = vn_numeclien;
return nome;
end $$
delimiter ;

-- estou passando como parametro o id do cliente igual a 1
select rt_nome_cliente(1);
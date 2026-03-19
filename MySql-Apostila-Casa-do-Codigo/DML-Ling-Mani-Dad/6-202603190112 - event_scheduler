-- habilitando event_scheduler
set global event_scheduler = on;
-- verificando se o event_scheduler esta ON
SHOW VARIABLES LIKE 'event_scheduler';

-- criando um agendamento para executar o processa_comissionamento
delimiter $$
mysql> create event processa_comissao
on schedule every 1 week starts '2015-03-01 23:38:00'
do
begin
call processa_comissionamento(
current_date() - interval 7 day,
current_date(), @a );
end
$$
delimiter ;

-- executando para ver o resultado do evento
select c_codivenda Codigo, n_totavenda Total, n_vcomvenda Comissao
from comvenda
where
d_datavenda between current_date() - interval 60 day
and current_date();









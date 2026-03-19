## irei retornar o código da venda, nome do cliente e a
## data da venda ordenando pelo nome e em seguida pela data
select c_codivenda,
rt_nome_cliente(n_numeclien), d_datavenda
from comvenda
order by 2,3;
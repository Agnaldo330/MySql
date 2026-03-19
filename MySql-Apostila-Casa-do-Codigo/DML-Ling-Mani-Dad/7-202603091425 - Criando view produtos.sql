-- criando uma view produtos
create or replace VIEW produtos as
select n_numeprodu,c_codiprodu,c_descprodu,n_valoprodu,c_situprodu,n_numeforne
from comprodu;

-- chamando a view criada
select * FROM produtos;

-- inserindo dados atraves da view
insert into produtos values
(6,'0006','SMART WATCH','2412.98','A',1);

-- Atualizando dados atraves da VIEW
update produtos set n_valoprodu = '1245.99'
where n_numeprodu = 6;

-- deletando dados pela view
delete from produtos where n_numeprodu = 6;

-- excluindo uma VIEW
drop view produtos;
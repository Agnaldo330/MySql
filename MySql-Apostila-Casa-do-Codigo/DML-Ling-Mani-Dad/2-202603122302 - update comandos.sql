use comercial;

-- alterando dados de registro. Antes era Aaronson Furniture Ltda.
update comclien set c_nomeclien = 'Aaronson Furniture' where n_numeclien = 1;

-- atualizando mais de um campo
update comclien set
c_nomeclien = 'Aaronson Furniture',
c_cidaclien = 'Londrina',
c_estaclien = 'PR'
where n_numeclien = 1;

commit;

-- esse commit é pra gravar definitivamente os dados alterados no sistema
-- caso tenha por engano usado o commit depois de ter alterado os dados, tem um jeito.
-- usando o rollback
update comclien set c_nomeclien ='Aaronson'where n_numeclien = 1;
rollback;
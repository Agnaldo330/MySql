use comercial;

-- deletando os registro da tabela comclien - o registro 1
delete from comclien
where n_numeclien = 1;

commit;

-- mostrando todos os regostros
select * from comclien;

-- deletando todos os registro da tabela comclien
delete from comclien;
commit;

-- quando se usa o comando delete para excluir dados ele deleta em uma tabela temporaria para uma possivel recuperção.
-- ja o truncate deleta direto sem chance de recuperação
-- deletar os dados da tabela comclien sem chance de recuperação. Nem mesmo o rollback sera capaz de recuperar
truncate table comclien;
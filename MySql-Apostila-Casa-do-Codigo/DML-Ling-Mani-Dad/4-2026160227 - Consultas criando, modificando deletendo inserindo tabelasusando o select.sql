use comercial;

-- criando uma tabel usando o select
create table comclien_bkp as(select * from comclien where c_estaclien = 'SP');
/*
PEGAR todos os registros da tabela comclien
SE o estado do cliente for 'SP'
ENTÃO copiar o registro
CRIAR uma nova tabela chamada comclien_bkp
SALVAR nela todos os registros copiados
*/

-- criando uma tabela contato
create table comcontato(
n_numecontato int not null auto_increment,
c_nomecontato varchar(200),
c_fornecontato varchar(30),
c_cidacontato varchar(200),
c_estacontato varchar(2),
n_numeclien int,
primary key(n_numecontato));

-- inserindo os dados da tabela comclien para a tabela comcontato usando o select
-- incrivel isso hein
insert into comcontato(
select  n_numeclien,
		c_nomeclien,
        c_forneclien,
        c_cidaclien,
        c_estaclien,
        n_numeclien
        from comclien);

select * from comclien;

-- alterando registro por meio do select
-- alterando os registros: c_cidacontao e c_estacontato na tabela contato buscando na tabel comclien_bkp
update comcontato set c_cidacontato = 'LONDRINA', c_estacontato = 'PR'
where n_numeclien in (select n_numeclien from comclien_bkp);

-- deletando todos os contatos da tabela comvenda que não tem numero ou tem registro
-- ligado na tabela comvenda usando o comando not in
-- deletou apenas o contato 10 que não tem registro na tabela comvenda
delete from comcontato where n_numeclien not in (select n_numeclien from comvenda);
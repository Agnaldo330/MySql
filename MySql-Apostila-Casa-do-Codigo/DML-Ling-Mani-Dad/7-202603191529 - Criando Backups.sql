-- comando para fazer os backups do banco de dados com tabelas BDs triggers e rotinas
-- devo fazer isso fora do mysql no terminal do linux mesmo. Não é preciso navegar ate a pasta de instalação
-- do mysql. é so digiar o comando e o caminho que vai ficar o bakup
mysqldump -u usermysql -p comercial >
-- no meu caso minha pasta fica em home/estudo/Documentos/Backups
home/estudo/Documentos/Backups/Nome_do_backup.sql

-- então:
mysqldump -u usermysql -p  --routines --triggers comercial > home/estudo/Documentos/Backups/Nome_do_backup.sql
-- pronto ja foi feito o backup

-- exportar apenas uma tabela
mysqldump -u root -p comercial comclien > c:/bkp_clien.sq

-- fazendo backups de varios banco de dados
mysqldump -u root -p --all-databases > c:/bkp_all.sql


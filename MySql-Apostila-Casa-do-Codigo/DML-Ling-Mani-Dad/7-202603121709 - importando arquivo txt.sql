load data infile '/var/lib/mysql-files/lista_clientes.txt'
into table comuser
fields terminated by ','
enclosed by '''';
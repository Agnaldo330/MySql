SELECT * 
FROM comclien
INTO OUTFILE '/var/lib/mysql-files/lista_clientes.csv' -- pode ser tbm .txt
FIELDS TERMINATED BY ','
ENCLOSED BY '"';

SHOW VARIABLES LIKE 'secure_file_priv';
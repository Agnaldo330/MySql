-- Criando um novo usuario
create user usermysql@'%' identified by 'cursomysql';

-- conceder direito total ao novo usuario
grant all privileges on *.* to usermysql@'%' with grant option;

-- Caso queira revogar os privilegios deste usuario seria o comando abaixo
-- revoke all on *.* from usermysql;

-- alterando a senha do root no mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '5679';
FLUSH PRIVILEGES;

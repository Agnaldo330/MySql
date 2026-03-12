-- Criando um novo usuario
create user usermysql@'%' identified by 'cursomysql';

-- conceder direito total ao novo usuario
grant all privileges on *.* to usermysql@'%' with grant option;

-- Caso queira revogar os privilegios deste usuario seria o comando abaixo
-- revoke all on *.* from usermysql;


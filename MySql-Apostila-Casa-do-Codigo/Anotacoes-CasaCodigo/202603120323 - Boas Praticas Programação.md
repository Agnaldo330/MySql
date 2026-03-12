- Modelar o sistema a ser criado
- usar software de controle de versão
- criação de outro usuario diferente do root
- criar tres BDs:
	- BD Desenvolvimento
	- BD Teste
	- BD Produção

**Privilégios em SQL**
Existe comandos sql que revogam e dao privilégios a banco de dados, tabelas e também campos específicos. interessante né?
Ex:
**mysql> grant all tocomercial.*tousermysql@localhostmysql>revoke all on comercial.*;**
mysql>revoke            all            oncomercial.*;

**Nivel de TAbelas**
**mysql>grant all oncomercial.nome_tabela;mysql>revoke all oncomercial.nome_tabela;**

**Nível de Colunas**
**mysql>grant select(nomecoluna1),
			insert(nomecoluna1),
			update(nomecoluna1)
			on comercial.nome_tabela
			to usermysql@localhost
			identifiedbysenha;**



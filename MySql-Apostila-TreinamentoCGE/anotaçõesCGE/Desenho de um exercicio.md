Dado o comando abaixo faça o desenho de como ficaráessa tabela no banco de dados.CREATE TABLE armazem (item INT(6) DEFAULT NOT NULL AUTO_INCREMENT,vendedor CHAR(20) NOT NULL,preco DOUBLE(16,2) NOT NULL,fornecedor INT(6)NOT NULL,PRIMARY KEY(artigo));

Primeiro, note que há **um pequeno erro no comando**. A chave primária está definida como **`artigo`**, mas essa coluna **não existe**. Provavelmente deveria ser **`item`**.

Comando corrigido:

CREATE TABLE armazem (  
  item INT(6) NOT NULL AUTO_INCREMENT,  
  vendedor CHAR(20) NOT NULL,  
  preco DOUBLE(16,2) NOT NULL,  
  fornecedor INT(6) NOT NULL,  
  PRIMARY KEY (item)  
);

### Como ficará a estrutura da tabela no banco

|Campo|Tipo|Tamanho|Nulo|Extra|
|---|---|---|---|---|
|item|INT|6|NÃO|AUTO_INCREMENT|
|vendedor|CHAR|20|NÃO|—|
|preco|DOUBLE|16,2|NÃO|—|
|fornecedor|INT|6|NÃO|—|

### Desenho simplificado da tabela

+-------------+----------------+-----------+--------------+  
| item (PK)   | vendedor       | preco     | fornecedor   |  
+-------------+----------------+-----------+--------------+  
| 1           | João           | 120.50    | 3            |  
| 2           | Maria          | 89.90     | 5            |  
| 3           | Pedro          | 45.00     | 2            |  
+-------------+----------------+-----------+--------------+

**Explicação rápida:**

- **item** → número do registro (incrementa sozinho)
    
- **vendedor** → nome do vendedor (até 20 caracteres)
    
- **preco** → valor com **2 casas decimais**
    
- **fornecedor** → código do fornecedor
    
- **PRIMARY KEY** → identifica cada registro da tabela
    

💡 Como você está estudando bastante **MySQL no terminal**, um comando útil para ver esse desenho direto no banco é:

DESCRIBE armazem;

ou

SHOW COLUMNS FROM armazem;

Se quiser, também posso te mostrar **como o professor normalmente espera esse “desenho” em prova de banco de dados** (tem um formato bem padrão). 📊

mostra

Quando a questão pede **“desenhe como ficará a tabela”**, normalmente o professor espera algo **parecido com o modelo de tabela do banco**, assim:

TABELA: ARMAZEM  
+-------------+----------------------+---------------+--------------+  
| item (PK)   | vendedor             | preco         | fornecedor   |  
+-------------+----------------------+---------------+--------------+  
| INT(6)      | CHAR(20)             | DOUBLE(16,2)  | INT(6)       |  
| AUTO_INC    | NOT NULL             | NOT NULL      | NOT NULL     |  
+-------------+----------------------+---------------+--------------+

### Explicação do desenho

- **item**
    
    - Tipo: `INT(6)`
        
    - **AUTO_INCREMENT** (aumenta automaticamente)
        
    - **PRIMARY KEY**
        
- **vendedor**
    
    - Tipo: `CHAR(20)`
        
    - **NOT NULL** (obrigatório)
        
- **preco**
    
    - Tipo: `DOUBLE(16,2)`
        
    - **NOT NULL**
        
- **fornecedor**
    
    - Tipo: `INT(6)`
        
    - **NOT NULL**
        

### Outra forma que alguns professores aceitam

ARMAZEM  
  
item (INT(6), PK, AUTO_INCREMENT, NOT NULL)  
vendedor (CHAR(20), NOT NULL)  
preco (DOUBLE(16,2), NOT NULL)  
fornecedor (INT(6), NOT NULL)

⚠️ Só lembrando de novo: no comando que você mandou tinha um erro:

PRIMARY KEY(artigo)

O correto seria:

PRIMARY KEY(item)
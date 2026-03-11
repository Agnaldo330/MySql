Vou te mostrar **os principais modelos de banco de dados** e por que o **modelo relacional** acabou sendo o mais usado.

---

# 1️⃣ Modelo Hierárquico

Foi um dos primeiros modelos de banco de dados.

Ele funciona como **uma árvore** (pai → filho).

Exemplo:

```
Empresa
 ├── Departamento
 │     ├── Funcionário
 │     └── Funcionário
 └── Departamento
       └── Funcionário
```

📌 Problema:

- cada filho só pode ter **um pai**
    
- difícil de fazer consultas complexas
    

Esse modelo foi usado em sistemas antigos como o **IBM Information Management System**.

---

# 2️⃣ Modelo em Rede

Aqui os registros podem ter **vários relacionamentos**.

Exemplo:

```
Aluno ---- Curso
   |         |
   |         |
 Professor ---
```

📌 Problema:

- estrutura complicada
    
- difícil de manter
    
- consultas complexas
    

---

# 3️⃣ Modelo Relacional (o mais usado)

Criado por **Edgar F. Codd** em 1970.

Ele organiza dados em **tabelas**.

Exemplo:

### Tabela clientes

|id_cliente|nome|
|---|---|
|1|João|
|2|Maria|

### Tabela pedidos

|id_pedido|id_cliente|
|---|---|
|1|1|
|2|2|

Relacionamento:

```
CLIENTES
   │
   │ id_cliente
   │
PEDIDOS
```

Consultas são feitas com **SQL**.

---

# 4️⃣ Modelo NoSQL (mais recente)

Usado em aplicações muito grandes como redes sociais.

Exemplo de bancos:

- MongoDB
    
- Redis
    
- Apache Cassandra
    

Eles não usam tabelas tradicionais.

Exemplo em documento:

```json
{
 "nome": "João",
 "idade": 30,
 "cidade": "São Paulo"
}
```

---

# 📊 Comparação simples

|Modelo|Estrutura|Dificuldade|
|---|---|---|
|Hierárquico|árvore|média|
|Rede|grafo|difícil|
|Relacional|tabelas|fácil|
|NoSQL|documentos/chaves|varia|

---

✅ **Por que o relacional venceu**

- fácil de entender
    
- usa **SQL padrão**
    
- muito confiável
    
- suporta relações entre dados
    
- muito usado em empresas
    

Exemplos famosos:

- MySQL
    
- PostgreSQL
    
- Oracle Database
    

---

💡 Como você está estudando **MySQL e SQL**, você já está aprendendo exatamente o **modelo de banco mais usado no mundo**.

---

Se quiser, posso também te mostrar **uma coisa que quase ninguém explica direito** mas que ajuda muito a entender banco de dados:

👉 **as 12 regras do modelo relacional de Codd** (professores gostam muito disso em prova).
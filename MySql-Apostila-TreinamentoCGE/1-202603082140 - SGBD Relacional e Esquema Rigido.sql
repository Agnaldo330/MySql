/* 
Um SGBD relacional (Sistema de Gerenciamento de Banco de Dados)
organiza dados estruturados em tabelas com linhas e colunas (esquema rígido), usando SQL para gerenciamento e garantindo propriedades ACID (integridade e confiabilidade). Eles conectam dados através de chaves primárias e estrangeiras, ideais para aplicações que exigem alta precisão. Exemplos: MySQL, PostgreSQL, Oracle, SQL Server. 
Principais Características e Conceitos:

    Tabelas e Estrutura: Dados são armazenados em tabelas (relações), organizados em linhas (tuplas/registros) e colunas (atributos/campos).
    SQL (Structured Query Language): Linguagem padrão para consultar, inserir, atualizar e excluir dados.
    Relacionamentos: Conexões lógicas entre tabelas usando chaves primárias (identificador único) e chaves estrangeiras.
    Propriedades ACID: Atomicidade, Consistência, Isolamento e Durabilidade, garantindo transações seguras.
    Esquema Rígido: A estrutura (tabelas e tipos de dados) deve ser definida antes da inserção dos dados. 

Exemplos Populares de SGBD Relacional:

    MySQL: Código aberto, amplamente utilizado na web.
    PostgreSQL: Conhecido pela robustez e conformidade com padrões.
    Oracle Database: Solução empresarial de alto desempenho.
    SQL Server: Sistema da Microsoft.
    SQLite: Leve, ideal para aplicações móveis. 

Vantagens:
Alta integridade dos dados, facilidade de consulta, suporte a transações complexas e consistência sólida. 
Desvantagens:
Pode ser difícil escalar horizontalmente e a estrutura rígida limita a flexibilidade para dados não estruturados, diferentemente dos bancos NoSQL

Esquema Rigido

Um SGBD Relacional (SGBDR) é um sistema de gerenciamento de banco de dados baseado no modelo relacional (proposto por Edgar F. Codd na IBM em 1970), que organiza os dados em tabelas (relações), compostas por linhas (tuplas/registros) e colunas (atributos). 
A característica de esquema rígido é central nesse modelo, significando que a estrutura do banco de dados (tabelas, colunas, tipos de dados e relacionamentos) deve ser estritamente definida antes que qualquer dado seja armazenado. 
O que significa "Esquema Rígido" (Rigid Schema)?

    Definição Prévia: Antes de inserir dados, você precisa criar as tabelas e definir exatamente o tipo de dado (int, texto, data) que cada coluna aceitará.
    Integridade dos Dados: O SGBD não permite inserir dados que não sigam essa estrutura, garantindo alta consistência e integridade.
    Relacionamentos (Chaves): Conexões entre tabelas são feitas através de chaves primárias e estrangeiras definidas previamente.
    Dificuldade de Alteração: Mudar a estrutura (adicionar, alterar ou excluir uma coluna) em uma tabela com muitos dados pode ser complexo, demorado e, às vezes, exigir tempo de inatividade (offline) do sistema. 

Vantagens do Esquema Rígido

    Confiabilidade e Integridade: Como o esquema é fixo, o banco de dados garante que os dados sejam consistentes, confiáveis e corretos, sendo ideal para sistemas transacionais (ACID) como bancos.
    Consultas (SQL) Eficientes: A estrutura previsível permite que o SGBD otimize o desempenho das consultas.
    Padronização: A linguagem SQL, amplamente adotada, facilita a manipulação de dados estruturados. 

Desvantagens do Esquema Rígido

    Baixa Flexibilidade: Dificulta a adaptação a mudanças rápidas de requisitos ou a dados não estruturados/semiestruturados.
    Dificuldade de Escala: Geralmente escalam "verticalmente" (aumentando o hardware do servidor), o que pode se tornar caro e limitado.
    Manutenção Complexa: Alterar a estrutura de uma tabela com alto volume de dados (ex: adicionar uma coluna em uma tabela com milhões de registros) pode ser uma tarefa complexa. 

Principais SGBDs Relacionais

    PostgreSQL: Reconhecido pela conformidade com padrões e robustez.
    MySQL: Muito popular para aplicações web.
    Oracle Database: Solução empresarial de alto desempenho.
    Microsoft SQL Server: Sistema integrado da Microsoft.
    SQLite: Leve, usado em aplicações móveis. 

Quando usar: Quando a estrutura dos dados é conhecida, precisa de alta consistência e ACID é crucial (sistemas financeiros, ERPs, cadastros estruturados).
Quando evitar: Quando os dados mudam de estrutura com frequência ou não são estruturados (big data, análise em tempo real, prototipagem rápida), caso em que se preferem bancos NoSQL (como MongoDB)'
*/
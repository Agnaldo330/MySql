-- Entrando no banco de dados curso para epois criar a tabela estudantes
use curso

-- Criando a tabela estudantes
CREATE TABLE `estudantes` (
  `numerocadastro` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(35) NOT NULL,
  `turma` int DEFAULT NULL,
  PRIMARY KEY (`numerocadastro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

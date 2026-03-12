
-- criando a tabel comforne
CREATE TABLE IF NOT EXISTS comforne (
  n_nomeforne INT(11) NOT NULL auto_increment,
  c_codiforne VARCHAR(10) NULL,
  c_nomeforne VARCHAR(100) NULL,
  c_razaforne VARCHAR(100) NULL,
  c_forneforne VARCHAR(20) NULL,
  PRIMARY KEY (n_nomeforne));
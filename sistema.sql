CREATE TABLE usuarios (
id INT AUTO_INCREMENT PRIMARY KEY,
usuario VARCHAR(50) NOT NULL,
senha VARCHAR (255) NOT NULL

);

-- Expressao SQL para criar a tabela de fornecedores
CREATE TABLE fornecedores (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100) NOT NULL,
email VARCHAR(100),
telefone VARCHAR(20)
);

-- Expressao SQL para criar a tabela de
-- produtos relacionada via FK com a tabela
-- de fornecedores
CREATE TABLE produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
fornecedor_id INT,
nome VARCHAR(100) NOT NULL,
descricao TEXT,
preco DECIMAL(10, 2),
FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id)
);

INSERT INTO usuarios (usuario, senha) VALUES ('Maquiável', MD5('123'));
INSERT INTO usuarios (usuario, senha) VALUES ('Rubilson', MD5('546'));
INSERT INTO usuarios (usuario, senha) VALUES ('Claudinei', MD5('984'));
INSERT INTO usuarios (usuario, senha) VALUES ('Jonas', MD5('256'));

DROP TABLE usuarios;
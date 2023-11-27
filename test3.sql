CREATE DATABASE db_exemplo;

CREATE TABLE tb_clientes (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TRIGGER tr_cliente_inserido
AFTER INSERT ON tb_clientes
FOR EACH ROW
BEGIN
  INSERT INTO tb_produtos (nome, preco)
  VALUES (NEW.nome, 0.00);
END;

INSERT INTO tb_clientes (nome, email)
VALUES ('Fulano de Tal', 'fulano@exemplo.com');



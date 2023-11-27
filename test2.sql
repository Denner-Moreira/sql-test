CREATE TABLE clientes (
  id INT IDENTITY(1,1) NOT NULL,
  nome VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE pedidos (
  id INT IDENTITY(1,1) NOT NULL,
  cliente_id INT NOT NULL,
  produto VARCHAR(50) NOT NULL,
  quantidade INT NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes (id),
  PRIMARY KEY (id)
);

INSERT INTO clientes (nome, email)
VALUES
('João da Silva', 'joao@silva.com'),
('Maria da Silva', 'maria@silva.com');

INSERT INTO pedidos (cliente_id, produto, quantidade, valor)
VALUES
(1, 'Notebook', 1, 2000.00),
(2, 'Smartphone', 2, 3000.00);

ALTER TABLE pedidos
ADD CONSTRAINT fk_cliente_id
FOREIGN KEY (cliente_id) REFERENCES clientes (id);

SELECT
  pedidos.id,
  pedidos.produto,
  pedidos.quantidade,
  pedidos.valor,
  clientes.nome
FROM
  pedidos
INNER JOIN
  clientes
ON
  pedidos.cliente_id = clientes.id
WHERE
  clientes.nome = 'João da Silva';

SELECT
  clientes.id,
  clientes.nome,
  pedidos.produto,
  pedidos.quantidade,
  pedidos.valor
FROM
  clientes
INNER JOIN
  pedidos
ON
  clientes.id = pedidos.cliente_id
WHERE
  pedidos.produto = 'Notebook';

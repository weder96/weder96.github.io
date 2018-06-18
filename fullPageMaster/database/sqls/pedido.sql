-- Criando schema
CREATE SCHEMA pedidos;
USE pedidos;

-- Criando as tabelas
CREATE TABLE clientes (
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50)
);
CREATE TABLE categorias (
	idCategoria INT AUTO_INCREMENT PRIMARY KEY,
	categoria VARCHAR(50)
);
CREATE TABLE produtos (
	idProduto INT AUTO_INCREMENT PRIMARY KEY,
	produto VARCHAR(50),
	preco DECIMAL(2),
	idCategoria INT,
	FOREIGN KEY (idCategoria) REFERENCES categorias(idCategoria)
);
CREATE TABLE pedidos (
	idPedido INT AUTO_INCREMENT PRIMARY KEY,
	dataPedido DATETIME,
	idCliente INT,
	FOREIGN KEY (idCliente) REFERENCES clientes(idCliente)
);
CREATE TABLE detPedidos (
	iddetPedido INT AUTO_INCREMENT PRIMARY KEY,
	quantidade INT,
	idPedido INT,
	idProduto INT,
	FOREIGN KEY (idPedido) REFERENCES pedidos(idPedido),
	FOREIGN KEY (idProduto) REFERENCES produtos(idProduto)
);

-- Populando clientes
INSERT INTO clientes (nome) VALUES ('Amanda');
INSERT INTO clientes (nome) VALUES ('Beatriz');
INSERT INTO clientes (nome) VALUES ('Carla');
INSERT INTO clientes (nome) VALUES ('Denise');
INSERT INTO clientes (nome) VALUES ('Eloisa');
INSERT INTO clientes (nome) VALUES ('Fernanda');
INSERT INTO clientes (nome) VALUES ('Gabriela');
INSERT INTO clientes (nome) VALUES ('Isadora');
INSERT INTO clientes (nome) VALUES ('Joana');

-- Populando categorias
INSERT INTO categorias (categoria) VALUES ('Cama Mesa Banho');
INSERT INTO categorias (categoria) VALUES ('Eletrodomestico');
INSERT INTO categorias (categoria) VALUES ('Informatica');
INSERT INTO categorias (categoria) VALUES ('Movel');
INSERT INTO categorias (categoria) VALUES ('Roupa');
INSERT INTO categorias (categoria) VALUES ('Som');
INSERT INTO categorias (categoria) VALUES ('Video');

-- Populando produtos
INSERT INTO produtos (idCategoria, produto, preco) VALUES (1, 'Toalha de mesa', 45);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (2, 'Geladeira', 1200);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (2, 'Fogao', 600);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (3, 'Notebook', 1200);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (3, 'Tablet', 900);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (3, 'Ultrabook', 2100);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (4, 'Sofa', 1500);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (4, 'Cama', 800);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (4, 'Cadeira', 400);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (4, 'Mesa', 1450);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (5, 'Calca', 59.99);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (5, 'Camisa', 44.99);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (5, 'Blusa', 80.90);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (5, 'Short', 40.50);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (5, 'Meia', 15.25);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (6, 'CD Player', 180);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (6, 'Microsystem', 1350.75);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (7, 'TV', 1459.99);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (7, 'Blue Ray', 724.99);
INSERT INTO produtos (idCategoria, produto, preco) VALUES (7, 'Home Teather', 1879.99);

-- Populando pedidos
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-01', 1);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-01', Null);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-02', 1);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-02', 2);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-03', Null);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-03', 3);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-04', 3);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-05', Null);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-07', Null);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-08', 4);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-08', 4);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-09', Null);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-09', 5);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-10', 6);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-10', 6);
INSERT INTO pedidos (dataPedido, idCliente) VALUES ('2013-10-10', Null);


-- Populando detPedidos
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (1, 1, 16);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (1,2, 20);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (1,3, 12);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (1,3, 11);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (2,2, 1);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (2,1, 5);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (2,5, 3);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (3,10, 2);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (3,20, 8);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (3,15, 9);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (3,15, 12);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (3,12, 20);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (4,13, 22);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (5,14, 17);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (5,7, 19);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (6,7, 4);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (6,7, 6);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (7,8, 3);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (7,9, 5);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (7,10, 2);
INSERT INTO detPedidos (idPedido, idProduto, quantidade) VALUES (8,12, 1);

-- Mostrando o nome dos clientes que fizeram um pedido
SELECT DISTINCT nome
FROM clientes C
INNER JOIN pedidos P
ON C.idCliente = P.idCliente;

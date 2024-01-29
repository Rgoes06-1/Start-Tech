CREATE DATABASE comex;
USE comex;

CREATE TABLE categoria (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100)
);

CREATE TABLE produto (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255),
preco DECIMAL (10,2),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES categoria (id)
);

CREATE TABLE cliente (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (255)
);

CREATE TABLE pedido (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
DATA DATETIME,
cliente_id BIGINT,
FOREIGN KEY (cliente_id) REFERENCES cliente (id)
);

CREATE TABLE item_pedido (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
pedido_id BIGINT,
produto_id BIGINT,
preco_unitario DECIMAL (10,2),
quantidade INTEGER,
FOREIGN KEY (pedido_id) REFERENCES pedido (id),
FOREIGN KEY (produto_id) REFERENCES produto (id)
);

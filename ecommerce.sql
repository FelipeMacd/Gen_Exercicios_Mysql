CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
datacompra DATE,
preco DECIMAL (6,2),
quantidade INT NOT NULL,
departamento VARCHAR(255)
);

INSERT INTO tb_produtos (nome, datacompra, preco, quantidade, departamento)
VALUES ("Televisão LG 4K", "2024-04-01", 2300.00, 15, "Tv e Vídeo"),
("Televisão Samsung 4K", "2024-04-01", 2400.00, 20, "Tv e Vídeo"),
("Galaxy S23", "2024-03-01", 2899.00, 8, "Celular e Telefonia"),
("Moto G85", "2023-11-01", 1600.00, 10, "Celular e Telefonia"),
("HEADSET HIPEX", "2024-02-01", 349.90, 6, "Aúdio"),
("Fone Sem Fio JBL", "2024-05-01", 249.90, 25, "Aúdio"),
("Impressora HP", "2023-10-01", 339.90, 12, "Informática"),
("Monitor Dell", "2024-04-01", 689.90, 7, "Informática");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET quantidade = 14 WHERE id = 3;
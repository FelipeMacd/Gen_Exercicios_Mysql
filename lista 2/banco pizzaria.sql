CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(60) NOT NULL,
descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
tamanho VARCHAR(60) NOT NULL,
borda_recheada BOOLEAN,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id_categoria)
);

DESCRIBE tb_categorias;
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(tipo, descricao)
VALUES ("Salgada","Pizzas Salgadas"),
("Doce","Pizzas Doces"),
("Vegetariana","Pizza com ingredientes de origem vegetal"),
("Vegana","Pizza sem inredientes de origem animal"),
("Especial","Pizzas com ingredientes especiais");

INSERT INTO tb_pizzas(nome, preco, tamanho, borda_recheada, categoria_id)
VALUES("Portuguesa", 28.00, "Pequena", false, 1),
("Portuguesa", 46.00, "Média", true, 1),
("Portuguesa", 72.00, "Grande", true, 1),
("Calabresa", 26.00, "Pequena", false, 1),
("Calabresa", 43.00, "Média", true, 1),
("Calabresa", 68.00, "Grande", true, 1),
("Romeu e Julieta", 36.00, "Pequena", false, 2),
("Romeu e Julieta", 56.00, "Média", true, 2),
("Romeu e Julieta", 78.00, "Grande", true, 2),
("Prestígio", 60.00, "Média", true, 2),
("Prestígio", 78.00, "Grande", true, 2),
("Brocólis", 44.00, "Média", false, 3),
("Brocólis", 70.00, "Grande", false, 3),
("Rúcula e Tomate Seco", 58.00, "Média", false, 4),
("Rúcula e Tomate Seco", 79.00, "Grande", false, 4),
("Moda da Casa", 58.00, "Média", true, 5),
("Moda da Casa", 78.00, "Grande", true, 5),
("Pepperoni Especial", 68.00, "Média", true, 5),
("Pepperoni Especial", 88.00, "Grande", true, 5);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <=100;

SELECT * from tb_pizzas WHERE nome LIKE '%m%';

SELECT p.id_pizza, p.nome, p.preco, p.tamanho, c.tipo, c.descricao
FROM tb_pizzas AS p JOIN tb_categorias AS c
ON p.categoria_id = c.id_categoria;

SELECT p.id_pizza, p.nome, p.preco, p.tamanho, c.tipo, c.descricao
FROM tb_pizzas AS p JOIN tb_categorias AS c
ON p.categoria_id = c.id_categoria
WHERE c.tipo = 'Salgada';  
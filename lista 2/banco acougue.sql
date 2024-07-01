CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(60) NOT NULL,
descricao VARCHAR(260)
);

CREATE TABLE tb_produtos (
id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(60) NOT NULL,
marca VARCHAR(60),
preco DECIMAL(6,2) NOT NULL,
estoque INT NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Bovino", "Carne bovina"),
("Aves", "Frangos e Derivados"),
("Suino", "Carne de Porco"),
("Linguiças", "Tipos de linguiça"),
("Outros", "Outros tipos");

SELECT*FROM tb_categorias;

INSERT INTO tb_produtos(nome, marca, preco, estoque, categoria_id)
VALUES("Picanha", "JBS", 89.90, 27, 1),
("Contra-Filé", "Swift", 42.00, 35, 1),
("Alcatra", "Montana", 50.90, 20, 1),
("File de Frango", "Da casa", 19.00, 40, 2),
("Sobrecoxa", "D'adora", 13.00, 32, 2),
("Tulipa", "Da casa", 17.90, 25, 2),
("Lombo", "Seara", 21.00, 18, 3),
("Pernil", "Aurora", 16.00, 28, 3),
("Bacon", "Aurora", 52.00, 21, 3),
("Linguiça Na Brasa", "Perdigão", 19.90, 20, 4),
("Linguiça Toscana", "Seara", 17.00, 28, 4),
("Linguiça de Frango", "Sadia", 21.00, 18, 4),
("Pão de Alho", "Mezani", 12.00, 30, 5),
("Ketchup", "Heinz", 13.00, 15, 5),
("Queijo Coalho", "Quata", 26.00, 13, 5),
("Churrasqueira", "MOR", 140.00, 3, 5);

SELECT*FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT*FROM tb_produtos WHERE preco >= 50.00 AND preco <= 150.00;

SELECT*FROM tb_produtos WHERE nome LIKE '%c%';

SELECT p.nome, p.marca, p.preco, p.estoque, c.tipo, c.descricao
FROM tb_produtos p JOIN tb_categorias c
ON p.categoria_id = c.id;

SELECT p.nome, p.marca, p.preco, p.estoque, c.tipo, c.descricao
FROM tb_produtos p JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.tipo = "Aves";
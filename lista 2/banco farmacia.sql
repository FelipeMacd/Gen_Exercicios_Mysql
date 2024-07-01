CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sessao VARCHAR(60) NOT NULL,
descricao VARCHAR(260)
);

CREATE TABLE tb_produtos (
id_produto BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(60) NOT NULL,
marca VARCHAR(60) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
venda_prescrita BOOLEAN NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (sessao, descricao)
VALUES ("Medicamento", "Remédios e produtos medicinais"),
("Beleza", "Produtos de beleza e Cuidados Pessoais"),
("Higiene", "Produtos de Higiene Pessoal"),
("Infantil", "Produtos para bebês e crianças"),
("Suplemento", "Suplemento e vitaminas");

SELECT*FROM tb_categorias;

INSERT INTO tb_produtos(nome, marca, preco, venda_prescrita, categoria_id)
VALUES("Paracetamol", "EMS", 8.00, false, 1),
("Dipirona", "Bayer&Bayer", 12.00, false, 1),
("Diazepam", "Medley", 32.00, true, 1),
("Amozilina", "Germed", 22.00, true, 1),
("Rexona", "Unilever", 14.50, false, 2),
("Tenis Pé", "Baruel", 9.80, false, 2),
("Sabonete", "Dove", 4.50, false, 3),
("Shampoo", "Clear Men", 23.90, false, 3),
("Frauda Pampers", "P & G", 70.00, false, 4),
("Lenços Umidades", "Huggies", 20.00, false, 4),
("Chupeta", "Babies", 15.00, false, 4),
("Creatina", "Max", 90.00, false, 5),
("Whey Protein", "Grouth", 95.00, false, 5);

SELECT*FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT*FROM tb_produtos WHERE preco >= 5.00 AND preco <= 60.00;

SELECT*FROM tb_produtos WHERE nome LIKE '%c%';

SELECT p.nome, p.marca, p.preco, p.venda_prescrita, c.sessao, c.descricao
FROM tb_produtos p JOIN tb_categorias c
ON p.categoria_id = c.id;

SELECT p.nome, p.marca, p.preco, p.venda_prescrita, c.sessao, c.descricao
FROM tb_produtos p JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.sessao = "Higiene";








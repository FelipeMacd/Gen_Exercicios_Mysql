CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
setor VARCHAR(60) NOT NULL,
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

INSERT INTO tb_categorias (setor, descricao)
VALUES ("Hidráulica", "Materiais Hidráulicos"),
("Elétrica", "Materiais Elétricos"),
("Construção", "Materiais de Contrução"),
("Decoração", "Produtos para Decoração"),
("Acabamento", "Materiais de Acabamento");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, marca, preco, estoque, categoria_id)
VALUES("Chuveiro Elétrico", "Lorenzetti", 179.90, 15, 1),
("Cano PVC 100mm", "Tigre", 47.90, 46, 1),
("Torneira Monocromada", "Nerea", 199.90, 8, 1),
("Cabo Flexível 2,5mm 100m Azul", "SIL", 201.90, 35, 2),
("Eletroduto", "Lider", 22.90, 17, 2),
("Cabo Flexível 2,5mm 100m Azul", "SIL", 201.90, 35, 2),
("Conjunto 2 tomadas", "Schneider", 12.49, 80, 2),
("Manta Líquida", "Sika", 279.90, 32, 3),
("Argamassa", "Votorantin", 36.90, 46, 3),
("Impermeabilizante", "Vedaleje", 199.90, 25, 3),
("Cortina Blackout", "Miami", 489.90, 12, 4),
("Espelho Redondo Grande", "Veltine", 249.90, 14, 4),
("Papel de Parede TNT", "Brice", 171.90, 20, 4),
("Tinta Acílica Cinza", "Suvinil", 369.90, 23, 5),
("Verniz Solvente", "Luxens", 119.90, 16, 5),
("Porcelanato OffWhite Acetinado", "Portobello", 119.90, 65, 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco between 70.00 AND 150.00;

SELECT p.id_produto, p.nome, p. marca, p.preco, p.estoque, c.setor, c.descricao
FROM tb_produtos p JOIN tb_categorias c
ON p.categoria_id = c.id;

SELECT p.id_produto, p.nome, p. marca, p.preco, p.estoque, c.setor, c.descricao
FROM tb_produtos p JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.setor = "Hidráulica";




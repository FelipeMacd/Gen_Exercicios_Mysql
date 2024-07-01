CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(60) NOT NULL,
descricao VARCHAR(260)
);

CREATE TABLE tb_cursos (
id_curso BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(60) NOT NULL,
professor VARCHAR(120),
preco DECIMAL(6,2) NOT NULL,
nivel VARCHAR(60) NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, descricao)
VALUES ("Java", "Cursos de Java"),
("JavaScript", "Cursos de JavaScript"),
("C#", "Cursos de C#"),
("IA", "Cursos sobre IA"),
("Python", "Cursos de python");

SELECT * FROM tb_categorias;

INSERT INTO tb_cursos(nome, professor, preco, nivel, categoria_id)
VALUES ("JAVA: BÁSICO", "Eduardo Souza", 200.00, "Iniciante", 1),
("JAVA: POO", "Eduardo Souza", 300.00, "Intermediário", 1),
("JAVA: Complete Developer", "Eduardo Souza", 600.00, "Todos os níveis", 1),
("JAVASCRIPT: BÁSICO", "Pedro Oliveira", 280.00, "Iniciante", 2),
("JAVASCRIPT: Criando Site com HTML, CSS E JAVASCRIPT", "Pedro Oliveira", 550.00, "Intermediário", 2),
("JAVASCRIPT: Complete Developer", "Pedro Oliveira", 750.00, "Todos os níveis", 2),
("C#: BÁSICO", "Talita Fernandes", 250.00, "Iniciante", 3),
("C#: POO", "Talita Fernandes", 350.00, "Intermediário", 3),
("C#: Complete Developer", "Talita Fernandes", 700.00, "Todos os níveis", 3),
("IA: Como usar na programação", "Eliza Thabete", 200.00, "Iniciante", 4),
("IA: Desenvolvendo soluções", "Eliza Thabete", 300.00, "Intermediário", 4),
("PYTHON: BÁSICO", "Marina Moreira", 290.00, "Iniciante", 5),
("PYTHON: Ciências de Dados", "Marina Moreira", 700.00, "Intermedário", 5),
("PYTHON: Complete Developer", "Marina Moreira", 800.00, "Todos os níveis", 5);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursoS WHERE nome LIKE '%p%';

SELECT c.nome, c.professor, c.preco, c.nivel, ct.nome, ct.descricao
FROM tb_cursos AS c JOIN tb_categorias AS ct
ON c.categoria_id = ct.id
WHERE ct.nome = "JAVA";
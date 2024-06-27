CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT,
cargo VARCHAR(60) NOT NULL,
salario DECIMAL(6,2),
datacontratacao DATE,
ativo boolean,
PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios (nome, idade, cargo, salario, datacontratacao, ativo)
VALUES ("Felipe", 24, "Dev FullStack Jr", 3850.00, "2024-02-25", true),
("Rafaela", 28, "Analista de RH", 3400.00, "2022-05-17", true),
("Matheus", 27, "Dev FullStack PL", 5980.00, "2022-08-24", true),
("Fernanda", 21, "Aux. Administrativo", 1950.00, "2024-01-26", true),
("Rodrigo", 37, "Dev FullStack SR", 8730.00, "2024-02-25", true),
("Israel", 33, "Dev FullStack PL", 6250.00, "2024-02-25", false),
("Gabriela", 18, "Estagiária", 1560.00, "2024-02-25", true);

SELECT*FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 2100.00 WHERE id = 4;
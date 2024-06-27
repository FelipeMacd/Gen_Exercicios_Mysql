CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
idade INT NOT NULL,
serie VARCHAR (255) NOT NULL,
media DECIMAL (6,2),
bolsista boolean
);

INSERT INTO tb_alunos (nome, idade, serie, media, bolsista)
VALUES ("Pedro", 13, "8° ano", 9.2, true),
("Eduarda", 15, "1° grau", 7.6, false),
("Bianca", 12, "7° ano", 6.5, false),
("Enzo", 11, "6° ano", 6.8, false),
("Isabela", 15, "1° grau", 8.0, false),
("João", 14, "9° ano", 7.8, true),
("Alicia", 14, "9° ano", 8.7, true),
("Mariana", 12, "7° ano", 8.4, false),
("Bruno", 16, "2° grau", 6.5, false),
("Pedro", 13, "8° ano", 9.2, true),
("Renata", 14, "9° ano", 5.3, false),
("Marina", 12, "7° ano", 6.9, true);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE media > 7.0;

SELECT * FROM tb_alunos WHERE media < 7.0;

UPDATE tb_alunos SET idade = 15 WHERE id = 6;
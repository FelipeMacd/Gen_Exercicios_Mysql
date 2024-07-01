CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
funcao VARCHAR(60) NOT NULL,
equipamento VARCHAR(60)
);

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(60) NOT NULL,
habilidades VARCHAR(60),
ataque INT NOT NULL,
defesa INT NOT NULL
);

ALTER TABLE tb_personagens ADD classe_id BIGINT;

ALTER TABLE  tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classe_id) REFERENCES tb_classes (id);

INSERT INTO tb_classes (funcao, equipamento)
VALUES ("Ataque","Espada"),
("Defesa","Escudo"),
("Suporte","Besta"),
("Mago", "Varinha"),
("Tanque","Armadura");

INSERT INTO tb_personagens (nome, habilidades, ataque, defesa, classe_id)
VALUES ("Kill Right", "Sequência de corte", 2580, 1245, 1),
("Asena", "Muro de proteção", 1260, 2410, 2),
("Daric", "Tiros Precisos", 1950, 1560, 3),
("Loreta", "Chamas Flamenjantes", 2100, 1850, 4),
("Pelero", "Aperto Mortal", 1860, 2460, 5),
("Korito", "Socos Insanos", 2230, 1350, 1),
("Verspate", "Choque Cefálico", 1920, 1730, 4),
("Esmeralda", "Ressureição", 1230, 2510, 2),
("Kirito", "Garras Motiferas", 2030, 1980, 3);

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE ataque > 1000 AND ataque < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens
INNER JOIN tb_personagens ON tb_personagens


CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	 id_classe int auto_increment,
	 poderes varchar (55),
     inteligencia varchar (55),
     nivel int,
     
      PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagem(
       id_personagem int auto_increment,
       nome varchar(55),
       gênero varchar (55),
       arma varchar (55),
       categoria varchar (55),
       roupa varchar (55),
       ataque int,
       defesa int,
       fk_classe int,
       
       PRIMARY KEY (id_personagem),
       FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe)
);

INSERT INTO tb_classe (poderes, inteligencia, nivel) VALUES
("Força", "Golpes", 1),
("Supervelocidade", "Correr", 3),
("Voar","Anti reflexo", 2),
("Invisibilidade","Visão-RX", 1),
("Telecinese", "Hipnose", 5);

INSERT INTO tb_personagem (nome, gênero, arma, categoria, roupa, defesa, ataque, fk_classe) VALUES
("Kratos", "Masculino", "Espada", "Guerreiro", "Manta", 1000, 3000, 1),
("Ezio Auditore da Firenze", "Masculino","Espada", "Assasino", "Herdadas", 5000, 2000, 2),
("Guybrush Threepwood ","Masculino","Espada", "Pirata", "chapéu de pirata, um lenço, cinto", 3000, 4000, 3),
("Solid Snake","Masculino","Arma de fogo", "Espião", "Militar",1000,6000, 4),
("Ryu", "Masculino","Ataque", "Lutador", "Keikogi",4000,3000, 1),
("Lara Croft", "Feminina", "Flechas", "Arqueira", "Blusa, short, bota",3000,5000, 4),
("Chun-Li", "Feminina", "Ataque", "Lutadora", "Qipao",500,7000, 1),
("Link", "Masculino","Espada", "Herói", "Roupa verde", 6000, 1000, 1);

SELECT * FROM tb_personagem where ataque > 2000;
SELECT * FROM tb_personagem where ataque <= 1000 or ataque <= 2000;
SELECT * FROM tb_personagem where tb_personagem.nome like "%c%";

SELECT*FROM tb_personagem
INNER JOIN tb_classe on tb_classe.id_classe = tb_personagem.fk_classe;

SELECT * FROM tb_personagem where categoria = "Arqueira";

UPDATE tb_personagem set ataque = 1500 where id_personagem = 16;

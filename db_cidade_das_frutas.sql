CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
	 id_categoria int auto_increment,
	 `tipo do produto` varchar (55),
     `produto entregue no dia` boolean,
     `entrega grátis` boolean,
     
      PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
       id_produto int auto_increment,
       nome varchar(55),
       preco varchar (55),
       maduro boolean,
       disponivel boolean,
       fertilizante boolean,
       fk_categoria int,
       
       PRIMARY KEY (id_produto),
       FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (`tipo do produto`,`produto entregue no dia`, `entrega grátis`) VALUES
("Fruta", true, true),
("Fruta", true, false),
("Legumes", false, true),
("Legumes",false, false),
("Fruta", false, false);

INSERT INTO tb_produto (nome, preco, maduro,disponivel,fertilizante, fk_categoria) VALUES
("Limão", 2, true, true , false, 5),
("Morango", 10, true, true , true, 1),
("Banana", 4, false, true , false, 2),
("Maça", 6, false, true , false, 2),
("Pepino", 5, true, true , false, 4),
("Tomate", 7, false, false , false, 5),
("Batata", 8, true, true , false, 3),
("Amora", 10, true, true , true, 1);

SELECT * FROM tb_produto where preco > 50;
SELECT * FROM tb_produto where preco <= 3 or preco <= 60;
SELECT * FROM tb_produto where tb_produto.nome like "%c%";

SELECT*FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT * FROM tb_produto where nome = "amora";

UPDATE tb_produto set preco = 1 where id_produto = 1;

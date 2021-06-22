CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	 id_categoria int auto_increment,
	 `tipo do produto` varchar (55),
     `restrição médica` boolean,
     `entrega grátis` varchar (55) ,
     
      PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_produto(
       id_produto int auto_increment,
       nome varchar(55),
       preco varchar (55),
       validade date,
       disponivel boolean,
       `feito pela farmacia` boolean,
       fk_categoria int,
       
       PRIMARY KEY (id_produto),
       FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (`tipo do produto`,`restrição médica`, `entrega grátis`) VALUES
("Remédio", true, true),
("Remédio", true, false),
("Cosmético", false, true),
("Cosmético",false, false),
("Remédio", false, false);

INSERT INTO tb_produto (nome, preco, validade,disponivel,`feito pela farmacia`, fk_categoria) VALUES
("Dipirona", 2, 20220506, true , false, 5),
("Losartana", 10, 20220506, true , false, 2),
("Sinvastarina", 10, 20220506, true , false, 2),
("Batom", 20, 20220506, true , false, 4),
("Rímel", 30, 20220506, true , false, 4),
("Pó compacto", 70, 20220506, true , false, 3),
("Budesonima", 20, 20220506, true , false, 5),
("Glibenclamida", 10, 20220506, true , false, 2);

SELECT * FROM tb_produto where preco > 50;
SELECT * FROM tb_produto where preco <= 3 or preco <= 60;
SELECT * FROM tb_produto where tb_produto.nome like "%b%";

SELECT*FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_produto.fk_categoria;

SELECT * FROM tb_produto where nome = "dipirona";

UPDATE tb_produto set preco = 65 where id_produto = 6;

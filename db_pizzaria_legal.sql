CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	 id_categoria int auto_increment,
	 `tipo da pizza` varchar (55),
     `borda recheada` boolean,
     `entrega grátis` varchar (55) ,
     
      PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizza(
       id_pizza int auto_increment,
       nome varchar(55),
       sabor varchar (55),
       massa varchar (55),
       `tempo de preparo` varchar (55),
       molho boolean,
       promocao boolean,
       preco int,
       fk_categoria int,
       
       PRIMARY KEY (id_pizza),
       FOREIGN KEY (fk_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (`tipo da pizza`, `borda recheada`, `entrega grátis`) VALUES
("Salgada", true, true),
("Salgada", true, false),
("Salgada", false, true),
("Salgada",false, false),
("Doce", false, false);

INSERT INTO tb_pizza (nome,sabor,massa,`tempo de preparo`,molho,promocao, fk_categoria, preco) VALUES
("Mussarela", "mussarela e tomate", "tradicional", "20 min", false , true, 4, 24),
("Bolonhesa", "carne moida c/ mussarela", "tradicional", "20 min", false , true , 4, 30),
("Paulista ","mussarela, calabresa e cebola", "tradicional","20 min", false , true , 4, 24),
("Camarão","camarão ao molho, mussarela ou catupiry","tradicional", "40 min", true, false, 3, 50),
("Frango com catupiry", "frango desfiado e catupiry","tradicional","30 min", true, true, 2, 30),
("Portuguesa", "mussarela, presunto, ervilha, ovos, palmito e cebola", "tradicional", "40 min", false , true , 2, 45),
("Do chefe", "mussarela, brócolis, palmito, alho e tomate seco", "integral","40 min", false, false, 1, 48),
("Brigadeiro", "chocolate com granulado", "tradicional","30 min", true, false, 5, 30);

SELECT * FROM tb_pizza where preco > 45;
SELECT * FROM tb_pizza where preco <= 29 or preco <= 60;
SELECT * FROM tb_pizza where tb_pizza.nome like "%c%";

SELECT*FROM tb_pizza
INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_pizza.fk_categoria;

SELECT * FROM tb_pizza where nome = "mussarela";

UPDATE tb_pizza set molho = false where id_pizza = 8;

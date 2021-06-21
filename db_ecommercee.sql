
CREATE DATABASE db_ecommerce;

/*criar tabela*/
USE db_ecommerce;

CREATE TABLE tb_produtos (
         registro BIGINT AUTO_INCREMENT,
         nome VARCHAR(30),
         preco DECIMAL (10,2),
         vendedor VARCHAR(30),
         postagem DATE,
         regiao VARCHAR(30),
      
         PRIMARY KEY (registro)
);
/* Popule esta tabela com até 8 dados*/
INSERT INTO tb_produtos (nome, preco, vendedor, postagem, regiao) VALUES ("Geladeira", 2000, "Maria", 20210705, "São Paulo");
INSERT INTO tb_produtos (nome, preco, vendedor, postagem, regiao) VALUES ("Ventilador", 200, "Caleb", 20211008, "São Paulo");
INSERT INTO tb_produtos (nome, preco, vendedor, postagem, regiao) VALUES ("Microondas", 500, "Ana", 20200912, "São Paulo");
INSERT INTO tb_produtos (nome, preco, vendedor, postagem, regiao) VALUES ("Fogão", 700, "Maria", 20210705, "São Paulo");
INSERT INTO tb_produtos (nome, preco, vendedor, postagem, regiao) VALUES ("Teclado", 100, "Thiago", 20210406, "São Paulo");
INSERT INTO tb_produtos (nome, preco, vendedor, postagem, regiao) VALUES ("Mouse", 50, "Thiago", 20210406, "São Paulo");
INSERT INTO tb_produtos (nome, preco, vendedor, postagem, regiao) VALUES ("Camiseta", 29.99, "Vanessa", 20200131, "São Paulo");
INSERT INTO tb_produtos (nome, preco, vendedor, postagem, regiao) VALUES ("Fone de ouvido", 30, "Thiago", 20210406, "São Paulo");

/* Faça um select que retorne os produtos com o preço maior do que 500.*/
SELECT * FROM tb_produtos WHERE preco > 500;

/*Faça um select que retorne os produtos com o preço menor do que 500

SELECT * FROM tb_produtos WHERE preco < 500;*/

/*Atualização da query*/
UPDATE tb_produtos set preco = 1700 WHERE registro = 1;






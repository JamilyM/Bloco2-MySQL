/*criar datebase*/
CREATE DATABASE db_rh;
/*criar tabela*/
USE db_rh;
CREATE TABLE tb_funcionario (
         registro BIGINT AUTO_INCREMENT,
         nome VARCHAR(30),
         nascimento DATE,
         salario DECIMAL (10,2),
         cidade VARCHAR (30),
         setor  VARCHAR (30),        

         PRIMARY KEY (registro)
);
/* Popule esta tabela com até 5 dados*/
INSERT INTO tb_funcionario (nome, nascimento, salario, cidade, setor) VALUES ("Luciana", 19880712, 4000, "Manaus", "Desenvolvedor JR.");
INSERT INTO tb_funcionario (nome, nascimento, salario, cidade, setor) VALUES ("Joaquina", 19781212, 6000, "Curitiba", "Desenvolvedor");
INSERT INTO tb_funcionario (nome, nascimento, salario, cidade, setor) VALUES ("João", 19990424, 1700, "Jundiai", "Secretaria");
INSERT INTO tb_funcionario (nome, nascimento, salario, cidade, setor) VALUES ("Felipe", 20000329, 4000, "São Paulo", "Desenvolvedor JR.");
INSERT INTO tb_funcionario (nome, nascimento, salario, cidade, setor) VALUES ("Maria Luiza", 20010517, 1500, "Curitiba", "Auxiliar administrativo");

/* Faça um select que retorne os funcionaries com o salário maior do que 2000.*/
SELECT * FROM tb_funcionario WHERE salario > 2000;

/*Faça um select que retorne os funcionaries com o salário menor do que 2000*/

SELECT * FROM tb_funcionario WHERE salario < 2000;

/*Atualização da query*/
UPDATE tb_funcionario set salario = 1700 WHERE registro =5;


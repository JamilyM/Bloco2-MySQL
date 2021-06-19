/*criar datebase*/
CREATE DATABASE db_escola;
/*criar tabela*/
USE db_escola;
CREATE TABLE tb_estudantes (
         registro BIGINT AUTO_INCREMENT,
         nome VARCHAR(30),
         curso VARCHAR(30),
         turma BIGINT,
         professor VARCHAR(30),
         nota BIGINT,
      
         PRIMARY KEY (registro)
);
/* Popule esta tabela com até 8 dados*/
INSERT INTO tb_estudantes (nome, curso, turma, professor, nota) VALUES ("Beatriz", "Psicologia", 1 , "Marcão", 10);
INSERT INTO tb_estudantes (nome, curso, turma, professor, nota) VALUES ("Ana Clara", "Psicologia", 1 , "Marcão", 5);
INSERT INTO tb_estudantes (nome, curso, turma, professor, nota) VALUES ("Felipe", "Psicologia", 1 , "Marcão", 7);
INSERT INTO tb_estudantes (nome, curso, turma, professor, nota) VALUES ("Matheus", "Psicologia", 1 , "Marcão", 9);
INSERT INTO tb_estudantes (nome, curso, turma, professor, nota) VALUES ("Maria", "Psicologia", 1 , "Marcão", 3);
INSERT INTO tb_estudantes (nome, curso, turma, professor, nota) VALUES ("Amanda", "Psicologia", 1 , "Marcão", 6);
INSERT INTO tb_estudantes (nome, curso, turma, professor, nota) VALUES ("Flora", "Psicologia", 1 , "Marcão", 7);
INSERT INTO tb_estudantes (nome, curso, turma, professor, nota) VALUES ("Gabriela", "Psicologia", 1 , "Marcão", 8);

/* Faça um select que retorne o/as estudantes com a nota maior do que 7.*/
SELECT * FROM tb_estudantes WHERE nota > 7;

/* Faça um select que retorne o/as estudantes com a nota menor do que 7.*/

SELECT * FROM tb_estudante WHERE nota < 7;

/*Atualização da query*/
UPDATE tb_estudantes set nota = 6 WHERE registro = 5;


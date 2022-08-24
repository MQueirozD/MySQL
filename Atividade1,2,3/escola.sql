/*Comando de criação de banco de dados*/
CREATE DATABASE bd_escola;

/*Usa o bando de dados criados*/
USE bd_escola;

/*Comando de criação de tabels*/
CREATE TABLE tb_alune(
id bigint auto_increment primary key,
nome varchar(255),
data_nascimento date , /*(ano-mes-dia)*/
turma int,
nota decimal(8,2)
);

/*manipulação de dados*/
/*mostra tudo q ta em tb_alune*/
SELECT *FROM tb_alune;


INSERT INTO tb_alune (nome,data_nascimento,turma,nota)
/*tem q ser a mesma sequencia de insert*/
VALUES("Mateus de Queiroz Davidson","1996-12-13",57,9.9);
INSERT INTO tb_alune(nome,data_nascimento,turma,nota)VALUES("Gabriel","2003-02-23",57,10);
INSERT INTO tb_alune(nome,data_nascimento,turma,nota)VALUES("Renan","1996-05-22",57,10);
INSERT INTO tb_alune(nome,data_nascimento,turma,nota)VALUES("Mateus","1997-12-05",57,10);
INSERT INTO tb_alune(nome,data_nascimento,turma,nota)VALUES("Eduardo","2003-02-28",57,10);
INSERT INTO tb_alune(nome,data_nascimento,turma,nota)VALUES("Maikon","1995-05-12",57,10);
INSERT INTO tb_alune(nome,data_nascimento,turma,nota)VALUES("Joao","2003-02-23",57,6.5);
INSERT INTO tb_alune(nome,data_nascimento,turma,nota)VALUES("Jose","2001-02-20",57,6.0);
INSERT INTO tb_alune(nome,data_nascimento,turma,nota)VALUES("Carlos","2006-02-23",57,5.9);


/*vai pegar so quem tem a nota maior q 7*/
SELECT *FROM tb_alune WHERE note >7;

/*fazer uma atualização*/
UPDATE tb_alune SET nota = 7 WHERE id3;

/*DROP DATABASE nome do banco*/
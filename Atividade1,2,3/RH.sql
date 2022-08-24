CREATE DATABASE bd_rh;
USE bd_rh;

CREATE TABLE tb_colaboradores(
id bigint auto_increment primary key,
nome varchar(255),
data_nascimento date , /*(ano-mes-dia)*/
salario decimal(8,2),
nome_empresa varchar(50),
setor_empresa varchar(100)
);
SELECT *FROM tb_colaboradores;
INSERT INTO tb_colaboradores(nome,data_nascimento,salario,nome_empresa,setor_empresa)VALUES("Mateus","1996-12-13",1500,"Mercado Livre","Estagiario");
INSERT INTO tb_colaboradores(nome,data_nascimento,salario,nome_empresa,setor_empresa)VALUES("Eduardo","2002-5-8",1800,"Itaú","DEV");
INSERT INTO tb_colaboradores(nome,data_nascimento,salario,nome_empresa,setor_empresa)VALUES("Gabriel","2003-12-13",2500,"Mercado Livre","Surpevisor");
INSERT INTO tb_colaboradores(nome,data_nascimento,salario,nome_empresa,setor_empresa)VALUES("Renan","2001-12-13",15500, "Itau","CEO");
INSERT INTO tb_colaboradores(nome,data_nascimento,salario,nome_empresa,setor_empresa)VALUES("Maikon","2000-1-1",2000, "Mercado Livre","DEV");

SELECT *FROM tb_colaboradores WHERE salario >2000;
SELECT *FROM tb_colaboradores WHERE salario <2000;

UPDATE tb_colaboradores SET salario = 3500 WHERE id = 3;
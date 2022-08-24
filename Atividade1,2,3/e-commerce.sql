CREATE DATABASE bd_e_commerce;
USE bd_e_commerce;

CREATE TABLE tb_loja(
id bigint auto_increment primary key,
marca varchar(255),
tipo_produto varchar(50),
cor varchar(50),
preco decimal(8,2),
tamanho_logo varchar(50)
);
/*
Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
*/
SELECT *FROM tb_loja;
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Adidas","Camisa","Preto",180,"Pequena");
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Nike","Camisa","Branco",280,"Pequena");
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Nike","Camisa","Preto",580,"Grande");
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Adidas","Camisa","Verde",680,"Pequena");
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Gucci","Camisa","Preto",1700,"Grande");
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Adidas","Camisa","Preto",1700,"Grande");
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Adidas","Camisa","Branco",1700,"Grande");
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Nike","Camisa","Azul",1700,"Grande");
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Nike","Camisa","Branco",650,"Pequena");
INSERT INTO tb_loja (marca,tipo_produto,cor,preco,tamanho_logo) VALUE ("Gucci","Camisa","Branco",1800,"Grande");
/*
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
*/
SELECT *FROM tb_loja WHERE preco>500;
SELECT *FROM tb_loja WHERE preco<500;

UPDATE tb_loja SET preco = 500 WHERE id = 10;

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

/*Insira 5 registros na tabela tb_categorias.*/
CREATE TABLE tb_categorias (
	id bigint auto_increment primary key,
    descricao varchar(255),
    tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas (
	id bigint auto_increment primary key,
    sabor varchar(255),
    preco decimal(6,2),
    massa varchar(255),
    quantidade int,
    categoria_id bigint,  /*é o que vai pegar a chave estrangeira*/
    /*aqui onde vamos pagar e colocar a chave estrangeira  "()- referencia"*/
    FOREIGN KEY (categoria_id) REFERENCES  tb_categorias(id)
);

SELECT * FROM tb_categorias;
/*Insira 5 registros na tabela tb_categorias.*/

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada) VALUES ("Salgada","Brotinho",true);#1
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Salgada","Brotinho",false);#2
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Salgada","Medio",true);#3
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Salgada","Medio",false);#4
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Salgada","Grande",true);#5
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Salgada","Grande",false);#6

INSERT INTO tb_categorias(descricao,tamanho,borda_recheada) VALUES ("Doce","Brotinho",true);#7
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Doce","Brotinho",false);#8
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Doce","Medio",true);#9
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Doce","Medio",false);#10
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Doce","Grande",true);#11
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Doce","Grande",false);#12

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Brotinho",true);#13
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Vegetariana","Brotinho",false);#14
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Vegetariana","Medio",true);#15
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Vegetariana","Medio",false);#16
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Vegetariana","Grande",true);#17
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Vegetariana","Grande",false);#18

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana","Brotinho",true);#19
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana","Brotinho",false);#20
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Vegana","Medio",true);#21
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Vegana","Medio",false);#22
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Vegana","Grande",true);#23
INSERT INTO tb_categorias(descricao, tamanho, borda_reacheada)VALUES("Vegana","Grande",false);#24

SELECT *FROM tb_pizzas;

/*Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Frango c/ Catupiry", 30.90, "Tradicional",1);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Calabresa", 59.90, "Pan",2);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Prestigio", 55.90, "Pan",10);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Abobrinha c/ requeijão", 22.50,"Integral",21);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Moranguete", 32.50,"Pan",12);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Espinafre gratinado", 25.80,"Tradicional",23);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("4 Queijos",49.80,"Pan",17);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Morango c/ Chocolate", 12.90,"Tradicional",7);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Estrogonofe",48.80,"Tradicional",4);
INSERT INTO tb_pizzas(sabor,preco,massa,quantidade,categoria_id)VALUES("Queijo e Milho",45.98,"Pan",15);


/*Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.*/
SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco ASC;#orderna o vpreco de ordem crescente

/*Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.*/
SELECT *FROM tb_pizzas WHERE preco>=50.00 AND preco<=100.00;
/*ou podemos fazer assim:*/
SELECT *FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

/*Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.*/
SELECT *FROM tb_pizzas WHERE sabor LIKE "%M%";
/*%m%=contem a letr m
  m%=inicia a letr m
  %m= termina a letr m*/
  
  /*pega todos os dados de tb_pizzas e tb_categorias atraves do categoria*/
  /*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.*/
  SELECT *FROM tb_pizzas INNER JOIN tb_categorias ON categoria.id = tb_pizzas.categoria_id;
  
  /*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
  onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce)*/
  SELECT *FROM tb_categorias WHERE descricao LIKE "%Doce%";
  
  /*Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
  e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.*/

#DROP DATABASE   db_pizzaria_legal;
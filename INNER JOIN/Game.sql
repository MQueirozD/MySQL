CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

/*Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online*/
CREATE TABLE tb_classes(
id bigint auto_increment primary key,
tipo_distancia varchar(50),#longa/curta distancia
tipo_ataque varchar(50)#mago/atirador/lutador
);

/*Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.*/
CREATE TABLE tb_personagens (
id bigint auto_increment primary key,
tipo_personagem varchar(50), #atacante/tanque/curador
ataque int,
defesa int,
tipo_arma varchar(50),#arqueiro/corpo a corpo/espada/feiticeiro
nome varchar (255),
classe_id bigint,
FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);
/*Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.*/

/*Insira 5 registros na tabela tb_classes.*/
#longa/curta distancia
#mago/atirador/lutador
SELECT * FROM tb_classes;
INSERT INTO tb_classes(tipo_distancia,tipo_ataque) VALUE ("Longa", "Mago");#1
INSERT INTO tb_classes(tipo_distancia,tipo_ataque) VALUE ("Longa", "Atirador");#2
INSERT INTO tb_classes(tipo_distancia,tipo_ataque) VALUE ("Curta", "Mago");#3
INSERT INTO tb_classes(tipo_distancia,tipo_ataque) VALUE ("Curta", "Lutador");#4
INSERT INTO tb_classes(tipo_distancia,tipo_ataque) VALUE ("Curta", "Atirador");#5

/*Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.*/
/*tipo_personagem #atacante/tanque/curador|    ataque    |     defesa    |    tipo_arma  #arqueiro/corpo a corpo/feiticeiro*/
SELECT * FROM tb_personagens;
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Atacante",5000,1500, "Arqueiro","CAITLYN",2);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Atacante",4050,2000, "Feiticeiro","CHO'GATH",1);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Atacante",3550,1500, "Feiticeiro","CASSIOPEIA",3);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Atacante",3600,3050, "Corpo a corpo","CAMILLE",4);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Tanque",1500,6500, "Corpo a corpo","BRAUM",4);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Tanque",2000,3000, "Feiticeiro","MORGANA",1);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Tanque",2500,2500, "Feiticeiro","LISSANDRA",3);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Curador",1000,3550, "Feiticeiro","SONA",1);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Curador",1200,3000, "Feiticeiro","YUUMI",3);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Curador",950,5300, "Corpo a corpo","WARWICK",4);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Curador",2000,3400, "Arqueiro","SIVIR",2);
INSERT INTO tb_personagens(tipo_personagem,ataque,defesa,tipo_arma,nome,classe_id) VALUE ("Curador",2055,4020, "Arqueiro","VARUS",5);

/*Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000*/
SELECT * FROM tb_personagens WHERE ataque >2000;

/*Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.*/
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

/*Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.*/
SELECT *FROM tb_personagens WHERE nome LIKE "%c%";

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.*/
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id ORDER BY classe_id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, 
onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).*/
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id WHERE tipo_arma LIKE "Arqueiro";

#DROP DATABASE   db_generation_game_online;
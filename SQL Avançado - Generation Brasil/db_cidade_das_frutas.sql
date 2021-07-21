/* Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são aves ou legumes). */

create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Frutas", true);
insert into tb_categoria(descricao, ativo) values ("Verduras", true);
insert into tb_categoria(descricao, ativo) values ("Legumes", true);
insert into tb_categoria(descricao, ativo) values ("Sucos", true);
insert into tb_categoria(descricao, ativo) values ("Lácteos", true);

create table tb_produto (
id bigint auto_increment,
produto varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvencimento date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Banana", 8.90, 12, '2021-08-01', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Chandelle Chocolate", 69.99, 20, '2022-01-01', 5);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Alface Americana", 3.70, 3, '2021-08-07', 2);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Tomate", 6.00, 4, '2021-08-30', 3);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Suco de Laranja 1L", 9.00, 2, '2021-09-25', 4);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Maça", 10.00, 3, '2021-10-01', 1);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Pepino", 4.00, 2, '2021-09-12', 3);
insert into tb_produto (produto, preco, qtproduto, dtvencimento, categoria_id) values ("Brócolis", 8.00, 6, '2021-09-05', 2);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where produto like "C%";

select tb_produto.produto, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.produto, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.descricao = "Legumes";

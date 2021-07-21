/* Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
Siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria hidráulica). */

create database db_construindoANossaVida;
use db_construindoANossaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Hidráulica", true);
insert into tb_categoria (descricao, ativo) values ("Elétrica", true);
insert into tb_categoria (descricao, ativo) values ("Alvenaria", true);
insert into tb_categoria (descricao, ativo) values ("Decoração", true);
insert into tb_categoria (descricao, ativo) values ("Marcenaria", true);

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
preco double(6,2) not null,
marca varchar(255),
quantidade int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco, marca, quantidade, categoria_id) values ("Cimento", 25.00, "Caue", 50, 3);
insert into tb_produto (nome, preco, marca, quantidade, categoria_id) values ("Lampada LED", 30.00, "Luz&Cia", 80, 2);
insert into tb_produto (nome, preco, marca, quantidade, categoria_id) values ("Junção T", 2.99, "Tigre", 145, 1);
insert into tb_produto (nome, preco, marca, quantidade, categoria_id) values ("Balcão de madeira", 455.00, "MadeiraMadeira", 20, 5);
insert into tb_produto (nome, preco, marca, quantidade, categoria_id) values ("Abajur rosé", 72.00, "Imaginarium", 48, 4);
insert into tb_produto (nome, preco, marca, quantidade, categoria_id) values ("Massa corrida", 45.00, "Caue", 50, 3);
insert into tb_produto (nome, preco, marca, quantidade, categoria_id) values ("Cano PVC - longo", 55.00, "Tigre", 100, 1);
insert into tb_produto (nome, preco, marca, quantidade, categoria_id) values ("Cano PVC - curto", 40.00, "Tigre", 100, 1);

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "C%";

select tb_produto.nome, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.descricao = "Hidráulica";
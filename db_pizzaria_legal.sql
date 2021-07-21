create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Pizza Doce", true);
insert into tb_categoria(descricao, ativo) values ("Pizza Salgada", true);
insert into tb_categoria(descricao, ativo) values ("Esfiha Doce", true);
insert into tb_categoria(descricao, ativo) values ("Esfiha Salgada", true);
insert into tb_categoria(descricao, ativo) values ("Calzone", true);

create table tb_pizza (
id bigint auto_increment,
sabor varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtpedido date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Calabresa", 47.90, 1,  '2021-07-21', 2);
insert into tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Nutella", 70.00, 1,  '2021-07-20', 1);
insert into tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Presunto Parma", 28.90, 3, '2021-07-16', 5);
insert into tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Queijo Fresco", 3.20, 15, '2021-07-16', 4);
insert into tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Carne", 2.50, 20, '2021-07-10', 4);
insert into tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("M&M'S", 4.00, 5, '2021-07-21', 3);
insert into tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Portuguesa", 51.99, 1, '2021-07-20', 2);
insert into tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Prestígio", 65.00, 1, '2021-07-10', 1);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "C%";

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where categoria_id = 1;
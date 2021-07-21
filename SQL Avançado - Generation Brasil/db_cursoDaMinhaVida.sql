/* /* Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra J.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são da categoria Java). */

create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Javascript", true);
insert into tb_categoria (descricao, ativo) values ("Java", true);
insert into tb_categoria (descricao, ativo) values ("Python", true);
insert into tb_categoria (descricao, ativo) values ("Ruby", true);
insert into tb_categoria (descricao, ativo) values ("C", true);

create table tb_curso (
id bigint auto_increment,
curso varchar (255) not null,
preco decimal(6,2) not null,
qthoras int not null,
dtcompra date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Javascript Ninja", 35.00, 44, '2019-08-01', 1);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Java com SpringBoot", 29.00, 98, '2021-09-06', 2);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Curso de Python 3 do Básico Ao Avançado", 189.00, 110, '2021-07-21', 3);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Ruby on Rails 5.x - Do início ao fim", 249.90, 48, '2021-07-21', 4);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Programação em C do básico ao avançado", 249.90, 24, '2018-05-25', 5);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Criando microsserviços em Java com AWS ECS e Fargate", 69.90, 10, '2020-09-25', 2);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("JavaScript: Completo de A a Z + Projetos Profissionais", 189.90, 17, '2021-01-16', 1);
insert into tb_curso (curso, preco, qthoras, dtcompra, categoria_id) values ("Reconhecimento de Textos com OCR e Python", 39.90, 13, '2016-12-23', 3);

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where produto like "J%";

select tb_curso.curso, tb_curso.preco, tb_categoria.descricao from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select tb_curso.curso, tb_curso.preco, tb_categoria.descricao from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id and tb_categoria.descricao = "Java";

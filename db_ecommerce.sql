/* Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
produto varchar(255),
fabricante varchar(255),
quantidade int,
preco decimal(8,2),
categoria varchar(255),
primary key(id)
);

insert into tb_produtos(produto, fabricante, quantidade, preco, categoria) values ("Máscara respirador PPF2 GVS Aero 2", "GVS", 50, 5.90, "Máscaras de Segurança");
insert into tb_produtos(produto, fabricante, quantidade, preco, categoria) values ("Toca Discos At-lp60x", "Audio-technica", 1, 1848.99, "Toca-discos");
insert into tb_produtos(produto, fabricante, quantidade, preco, categoria) values ("Batedeira Stand Mixer Proline", "KitchenAid", 10, 4099.00, "Batedeiras");
insert into tb_produtos(produto, fabricante, quantidade, preco, categoria) values ("Hub USB-C", "Ugreen", 2, 429.00, "Informática");
insert into tb_produtos(produto, fabricante, quantidade, preco, categoria) values ("Webcam Logitech C920s", "Logitech", 200, 464.90, "Informática");
insert into tb_produtos(produto, fabricante, quantidade, preco, categoria) values ("Chaleira elétrica térmica", "Xiaomi", 3000, 259.00, "Eletrodomésticos");
insert into tb_produtos(produto, fabricante, quantidade, preco, categoria) values ("Console Playstation 4 Slim", "Sony", 5000, 2549.00, "Games");
insert into tb_produtos(produto, fabricante, quantidade, preco, categoria) values ("Xbox Series S", "Microsoft", 6000, 2870.00, "Games");

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 3099.00 where id = 4;

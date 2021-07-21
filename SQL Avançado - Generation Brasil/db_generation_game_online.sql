/* Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
siga exatamente esse passo a passo:
Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.
Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).
Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.
Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
Faça um select utilizando LIKE buscando os personagens com a letra C.
Faça um um select com Inner join entre tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros). */

create database db_generationGameOnline;
use db_generationGameOnline;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_classe (descricao, ativo) values ("Mago", true);
insert into tb_classe (descricao, ativo) values ("Arqueiro", true);
insert into tb_classe (descricao, ativo) values ("Caçador", true);
insert into tb_classe (descricao, ativo) values ("Soldado", true);
insert into tb_classe (descricao, ativo) values ("Atirador", true);

create table tb_personagem (
id bigint auto_increment,
nome varchar (255) not null,
defesa double(6,2) not null,
ataque double(6,2) not null,
guilda varchar(255),
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Morgana", 3000, 2750, "Surrenders", 1);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Cairon", 1200, 1600, "Clube do Bolinha", 5);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Zakarias", 900, 1780, "Surrenders", 3);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Kelviana", 1200, 2700, "BeyHive", 2);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("JoyJoy", 1800, 1150, "BeyHive", 4);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Paulin", 900, 1850, "Clueless", 3);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Gortelou", 1600, 2350, "Surrenders", 2);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Silvana", 2000, 3150, "BeyHive", 1);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "C%";

select tb_personagem.nome, tb_personagem.guilda, tb_classe.descricao from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_classe.descricao from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id and tb_classe.descricao = "Mago";
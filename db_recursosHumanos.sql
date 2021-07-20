/* Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_recursosHumanos;
use db_recursosHumanos;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255),
idade int,
sexo varchar(255),
funcao varchar(255), 
salario decimal(8,3),
primary key(id)
);

insert into tb_funcionaries(nome, idade, sexo, funcao, salario) values ("Igor Morais", 25, "Masculino", "Desenvolvedor Java Fullstrack Jr.", 5.000);
insert into tb_funcionaries(nome, idade, sexo, funcao, salario) values ("Luciano Huck", 49, "Masculino", "Animador de platéia", 1.500);
insert into tb_funcionaries(nome, idade, sexo, funcao, salario) values ("Anitta Larissa", 28, "Feminino", "CEO", 90.000);
insert into tb_funcionaries(nome, idade, sexo, funcao, salario) values ("Matheus Tabarelli", 23, "Masculino", "Desenvolvedor Backend", 7.000);
insert into tb_funcionaries(nome, idade, sexo, funcao, salario) values ("Luis Inácio Lula da Silva", 75, "Masculino",  "Lindo",  30.000);

select * from tb_funcionaries where salario > 2.000;
select * from tb_funcionaries where salario < 2.000;

update tb_funcionaries set salario = 10.000 where id = 1;

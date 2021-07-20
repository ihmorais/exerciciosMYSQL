/* Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_escola;
use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
sexo varchar(255),
curso varchar(255),
turma int, 
nota int,
primary key(id)
);

insert into tb_estudantes(nome, sexo, curso, turma, nota) values ("Igor Morais", "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, sexo, curso, turma, nota) values ("Aryclenes ", "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, sexo, curso, turma, nota) values ("Nathalia Silvestre", "Feminino", "Desenvolvedora Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, sexo, curso, turma, nota) values ("Felipe Costa", "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 10);
insert into tb_estudantes(nome, sexo, curso, turma, nota) values ("Wendel Matos", "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 4);
insert into tb_estudantes(nome, sexo, curso, turma, nota) values ("Janaína Felicia", "Feminino", "Desenvolvedora Java Fullstack Jr.", 26, 6);
insert into tb_estudantes(nome, sexo, curso, turma, nota) values ("Anibal de Souza", "Masculino", "Desenvolvedor Java Fullstack Jr.", 26, 5);
insert into tb_estudantes(nome, sexo, curso, turma, nota) values ("Maju Coutinho", "Feminino", "Desenvolvedora Java Fullstack Jr.", 26, 0);

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 5 where id = 8;

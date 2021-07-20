create database tb_escola; 

use tb_escola; 

create table tb_estudantes(
ra bigint auto_increment,
nome varchar(255),
idade int,
curso varchar(255),
nota decimal(3,1),
genero varchar(255),
primary key (ra)
);

insert into tb_estudantes(nome, idade, curso, nota, genero) value ("Paulo", 21, "RH", 8, "Masculino");
insert into tb_estudantes(nome, idade, curso, nota, genero) value ("Larissa", 24, "ED. Física", 9, "Feminino");
insert into tb_estudantes(nome, idade, curso, nota, genero) value ("Jéssica", 27, "Contabilidade", 5, "Feminino");
insert into tb_estudantes(nome, idade, curso, nota, genero) value ("Raul", 22, "Publicidade", 6, "Masculino");
insert into tb_estudantes(nome, idade, curso, nota, genero) value ("Mateus", 25, "Música", 7, "Masculino");

select * from tb_estudantes;

select * from tb_estudantes where nota >= 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set idade = 23 where ra = 4;

select * from tb_estudantes;

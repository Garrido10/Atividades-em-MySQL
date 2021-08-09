create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
idCategoria bigint auto_increment, 
descricao varchar(250) not null, 
ativo boolean not null,
primary key (idCategoria)
);

insert into tb_categoria(descricao, ativo) value ("Administrativa", true);
insert into tb_categoria(descricao, ativo) value ("Tecnológica", true);
insert into tb_categoria(descricao, ativo) value ("Cientifica", true);
insert into tb_categoria(descricao, ativo) value ("Comunicativa", true);
insert into tb_categoria(descricao, ativo) value ("Medicinal", true);

select * from tb_categoria;

create table tb_cursos(
idCurso bigint auto_increment,
nome varchar(255) not null,
mensalidade decimal(6,2) not null,
horario varchar(255),
duracao varchar(255),
cat_curso bigint,
primary key (idCurso),
foreign key (cat_curso) references tb_categoria (idCategoria)
);

insert into tb_cursos (nome, mensalidade, horario, duracao, cat_curso) value ("Recursos Humanos", 600.00, "Noturno", "4 anos", 1);
insert into tb_cursos (nome, mensalidade, horario, duracao, cat_curso) value ("Farmácia", 550.00, "Matutino", "4 anos", 5);
insert into tb_cursos (nome, mensalidade, horario, duracao, cat_curso) value ("Ciências da Computação", 720.00, "Noturno", "4 anos", 2);
insert into tb_cursos (nome, mensalidade, horario, duracao, cat_curso) value ("Jornalismo", 580.00, "Noturno", "4 anos", 4);
insert into tb_cursos (nome, mensalidade, horario, duracao, cat_curso) value ("Publicidade", 630.00, "Matutino", "4 anos", 4);
insert into tb_cursos (nome, mensalidade, horario, duracao, cat_curso) value ("Biologia", 540.00, "Noturno", "4 anos", 3);
insert into tb_cursos (nome, mensalidade, horario, duracao, cat_curso) value ("Gestão de TI", 380.00, "Noturno", "2 anos", 2);
insert into tb_cursos (nome, mensalidade, horario, duracao, cat_curso) value ("Gestão de Contabilidade", 400.00, "Noturno", "2 anos", 1);

select * from tb_cursos;

select * from tb_cursos where mensalidade > 500.00;

select * from tb_cursos where mensalidade < 500.00;

select * from tb_cursos where mensalidade between 300.00 and 600.00;

select * from tb_cursos where nome like "%J%";

select tb_cursos.nome, tb_cursos.mensalidade, tb_categoria.descricao as Setor
from tb_cursos inner join tb_categoria on tb_categoria.idCategoria = tb_cursos.cat_curso;

select tb_cursos.nome, tb_cursos.mensalidade, tb_categoria.descricao as Setor
from tb_cursos inner join tb_categoria on tb_categoria.idCategoria = tb_cursos.cat_curso
where tb_categoria.idCategoria = 2;




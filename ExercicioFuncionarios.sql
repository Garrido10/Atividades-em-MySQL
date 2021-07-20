create database tb_rh; 

use tb_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
idade int,
cargo varchar(255),
salario decimal(8,2),
primary key (id)
);

insert into tb_funcionarios (nome, idade, cargo, salario) value ("Roberta", 34, "Gerente", 9.000); 
insert into tb_funcionarios (nome, idade, cargo, salario) value ("Felipe", 26, "Desenvolvedor(a)", 4.800); 
insert into tb_funcionarios (nome, idade, cargo, salario) value ("Amanda", 20, "Estagiária", 2.200); 
insert into tb_funcionarios (nome, idade, cargo, salario) value ("Carlos", 27, "Analista Pleno", 5.700); 
insert into tb_funcionarios (nome, idade, cargo, salario) value ("Ana", 25, "Desenvolvedor(a)", 4.800); 
insert into tb_funcionarios (nome, idade, cargo, salario) value ("Pedro", 25, "Motoboy", 1.800); 

select * from tb_funcionarios; 

select * from tb_funcionarios where salario > 2.000;

select * from tb_funcionarios where salario < 2.000;

select * from tb_funcionarios where salario < 5.000;

select * from tb_funcionarios where salario > 5.000;

update tb_funcionarios set salario = 1.600 where id = 3;
















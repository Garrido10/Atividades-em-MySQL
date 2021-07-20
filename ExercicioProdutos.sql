create database tb_ecommerce; 

use tb_ecommerce;

create table tb_produtos(
codigo bigint auto_increment,
nome varchar(255),
marca varchar(255),
preco decimal(8,2),
cor varchar(255),
ano int,
primary key (codigo)
);

alter table tb_produtos add tamanho varchar(255);



insert into tb_produtos (nome, marca, preco, cor, ano, tamanho) value ("Tênis", "Nike", 600, "Vermelho", "2021", "42");
insert into tb_produtos (nome, marca, preco, cor, ano, tamanho) value ("Camiseta", "Adidaas", 230, "Azul", "2020", "GG");
insert into tb_produtos (nome, marca, preco, cor, ano, tamanho) value ("Calça", "Nike", 200, "Preta", "2020", "40");
insert into tb_produtos (nome, marca, preco, cor, ano, tamanho) value ("Boné", "Oakley", 290, "Branco", "2021", "M");
insert into tb_produtos (nome, marca, preco, cor, ano, tamanho) value ("Chuteira", "Nike", 540, "Amarela", "2021", "42");
insert into tb_produtos (nome, marca, preco, cor, ano, tamanho) value ("Tênis", "Adidas", 410, "Cinza", "2020", "38");

select * from tb_produtos;

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 550 where codigo = 1;
update tb_produtos set preco = 315 where codigo = 2;

update tb_produtos set marca = "Adidas" where codigo = 2;









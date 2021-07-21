create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categorias(
id bigint auto_increment,
descricao varchar(255),
ativo boolean not null,
primary key (id)
);

insert into tb_categorias (descricao, ativo) value ("Remédios", true);
insert into tb_categorias (descricao, ativo) value ("Higiene", true);
insert into tb_categorias (descricao, ativo) value ("Beleza", true);
insert into tb_categorias (descricao, ativo) value ("Comidas", true);
insert into tb_categorias (descricao, ativo) value ("Bebidas", true);

select * from tb_categorias;


create table tb_produtos(
codigoProduto bigint auto_increment,
nome varchar(255),
preco decimal(5,2),
qtProduto bigint,
catProduto bigint,
primary key (codigoProduto),
foreign key (catProduto) references tb_categorias (id)
);

insert into tb_produtos(nome, preco, qtProduto, catProduto) value ("Amoxilina", 200.00, 300, 1);
insert into tb_produtos(nome, preco, qtProduto, catProduto) value ("Benegripe", 12.00, 400, 1);
insert into tb_produtos(nome, preco, qtProduto, catProduto) value ("Fralda Infantil", 55.00, 80, 2);
insert into tb_produtos(nome, preco, qtProduto, catProduto) value ("Esmalte", 2.99, 110, 3);
insert into tb_produtos(nome, preco, qtProduto, catProduto) value ("Rivotril", 24.00, 200, 1);
insert into tb_produtos(nome, preco, qtProduto, catProduto) value ("Barra de Chocolate", 7.00, 50, 4);
insert into tb_produtos(nome, preco, qtProduto, catProduto) value ("Gatorade", 7.50, 18, 5);
insert into tb_produtos(nome, preco, qtProduto, catProduto) value ("Lenço Umedecido", 32.00, 35, 1);

select * from tb_produtos;

update tb_produtos set catProduto = 2 where codigoProduto = 8;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%B%";

select tb_produtos.nome, tb_produtos.preco, tb_categorias.descricao as Setor
from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.catProduto;

select tb_produtos.nome, tb_categorias.descricao 
from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.catProduto where tb_categorias.id = 1;

select tb_produtos.nome, tb_categorias.descricao 
from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.catProduto where tb_categorias.id = 2;

select tb_produtos.nome, tb_categorias.descricao 
from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.catProduto where tb_categorias.id = 3;




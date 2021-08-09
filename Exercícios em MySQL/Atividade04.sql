create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
codigoProduto bigint auto_increment,
tipo varchar(255),
ativo boolean not null,
primary key (codigoProduto)
);

insert into tb_categoria(tipo, ativo) value ("Fruta", true);
insert into tb_categoria(tipo, ativo) value ("Verdura", true);
insert into tb_categoria(tipo, ativo) value ("Legume", true);
insert into tb_categoria(tipo, ativo) value ("Temperos", true);
insert into tb_categoria(tipo, ativo) value ("Outros", true);

delete from tb_categoria where codigoProduto >= 6;

select * from tb_categoria;

create table tb_produto(
codigo bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
qtProduto int,
categoria_produto bigint,
primary key (codigo),
foreign key (categoria_produto) references tb_categoria (codigoProduto)
);

insert into tb_produto (nome, preco, qtProduto, categoria_produto) value ("Cereja", 51.00, 4000, 1);
insert into tb_produto (nome, preco, qtProduto, categoria_produto) value ("Alface", 20.00, 300, 2);
insert into tb_produto (nome, preco, qtProduto, categoria_produto) value ("Tomate", 10.00, 350, 3);
insert into tb_produto (nome, preco, qtProduto, categoria_produto) value ("Sazon", 23.00, 500, 4);
insert into tb_produto (nome, preco, qtProduto, categoria_produto) value ("Jabuticaba", 25.00, 2000, 1);
insert into tb_produto (nome, preco, qtProduto, categoria_produto) value ("Uva", 56.00, 5000, 1);
insert into tb_produto (nome, preco, qtProduto, categoria_produto) value ("Peixe", 60.00, 150, 5);
insert into tb_produto (nome, preco, qtProduto, categoria_produto) value ("Batata", 9.00, 2000, 3);

select * from tb_produto;

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "c%";

select * from tb_produto where nome like "%t%";

select tb_produto.nome, tb_produto.preco, tb_categoria.tipo
from tb_produto inner join tb_categoria on tb_categoria.codigoProduto = tb_produto.categoria_produto;

select tb_produto.nome, tb_produto.preco, tb_categoria.tipo
from tb_produto inner join tb_categoria on tb_categoria.codigoProduto = tb_produto.categoria_produto
where tb_categoria.codigoProduto = 3;




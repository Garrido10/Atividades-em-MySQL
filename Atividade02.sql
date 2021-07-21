create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
idCategoria bigint auto_increment,
descricao varchar(255),
tamanho varchar(255),
primary key (idCategoria)
);

insert into tb_categoria(descricao, tamanho) value ("Salgada", "Grande");
insert into tb_categoria(descricao, tamanho) value ("Doce", "Grande");
insert into tb_categoria(descricao, tamanho) value ("Salgada", "Broto");
insert into tb_categoria(descricao, tamanho) value ("Doce", "Broto");
insert into tb_categoria(descricao, tamanho) value ("Salgada", "Gigante");

select * from tb_categoria;

create table tb_pizza(
codPizza bigint auto_increment,
sabor varchar(255),
preco decimal(5,2),
tempEspera varchar(255),
catPizza bigint,
primary key (codPizza),
foreign key (catPizza) references tb_categoria (idCategoria)
);

insert into tb_pizza (sabor, preco, tempEspera, catPizza) value ("Mussarela", 32.00, "25min", 1); 
insert into tb_pizza (sabor, preco, tempEspera, catPizza) value ("Calabresa", 32.00, "25min", 1);
insert into tb_pizza (sabor, preco, tempEspera, catPizza) value ("Chocolate c/ Morango", 38.00, "30min", 2);
insert into tb_pizza (sabor, preco, tempEspera, catPizza) value ("Portuguesa", 26.00, "20min", 3);   
insert into tb_pizza (sabor, preco, tempEspera, catPizza) value ("Chocolate", 30.00, "25min", 4); 
insert into tb_pizza (sabor, preco, tempEspera, catPizza) value ("Pepperoni", 60.00, "38min", 5); 
insert into tb_pizza (sabor, preco, tempEspera, catPizza) value ("Frango c/ Catupiry", 60.00, "38min", 5);
insert into tb_pizza (sabor, preco, tempEspera, catPizza) value ("Romeu e Julieta", 38.00, "30min", 2); 

select * from tb_pizza;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where sabor like "%C%";

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao, tb_categoria.tamanho
from tb_pizza inner join tb_categoria on tb_categoria.idCategoria = tb_pizza.catPizza;

select tb_pizza.sabor, tb_categoria.descricao
from tb_pizza inner join tb_categoria on tb_categoria.idCategoria = tb_pizza.catPizza 
where tb_categoria.idCategoria = 2;



create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tamanho varchar(255) not null,
tipo varchar(255) not null,
adicional varchar(255),
primary key(id)
);

insert tb_categorias(tamanho, tipo, adicional) 
values ("broto"," doce","refrigerante");

insert tb_categorias(tamanho, tipo, adicional) 
values ("padrão","salgado","suco");

insert tb_categorias(tamanho, tipo, adicional) 
values ("broto"," salgado","água com gás");

insert tb_categorias(tamanho, tipo, adicional) 
values ("padrão"," doce","refrigerante");

insert tb_categorias(tamanho, tipo, adicional) 
values ("broto"," doce","suco");

select * from tb_categorias;

create table tb_pizza(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (5,2) not null,
descricao varchar (255),
borda_reche varchar (255),
categorias_id bigint,
primary key(id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

insert into tb_pizza(nome, preco, descricao, borda_reche, categorias_id)
values ("Mussarela", 28, "mussarela com tomate", "catupiry", 3);

insert into tb_pizza(nome, preco, descricao, borda_reche, categorias_id)
values ("Brigadeiro", 35, "chocolate com granulados", "chocolate", 1);

insert into tb_pizza(nome, preco, descricao, borda_reche, categorias_id)
values ("4 queijos", 40, "mussarela,parmesão,cheddar e catupiry", "cheddar",2 );

insert into tb_pizza(nome, preco, descricao, borda_reche, categorias_id)
values ("Calabresa", 35, "calabresa com cebola", "catupiry", 3);

insert into tb_pizza(nome, preco, descricao, borda_reche, categorias_id)
values ("Camarão", 60, "mussarela com tomate", "catupiry", 2);

insert into tb_pizza(nome, preco, descricao, borda_reche, categorias_id)
values ("Frango com catupiry", 46, "frango e catupiry", "catupiry", 2);

insert into tb_pizza(nome, preco, descricao, borda_reche, categorias_id)
values ("Atum", 36, "atum e cebola", "catupiry", 3);

insert into tb_pizza(nome, preco, descricao, borda_reche, categorias_id)
values ("Bacon", 46, "bacon com mussarela", "cheddar", 2);

select * from tb_pizza;

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%C%";

select * from tb_pizza inner join tb_categorias
on tb_categorias.id = tb_pizza.categorias_id;

select tb_pizza.nome, tb_pizza.preco, categorias_id
from tb_pizza inner join tb_categorias on tb_categorias.id = tb_pizza.categorias_id where tb_categorias.id=1;




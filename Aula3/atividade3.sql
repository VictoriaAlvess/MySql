create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
primary key(id)
);
 
insert into tb_categorias(tipo) values ("antibiótico");
insert into tb_categorias(tipo) values ("analgésico");
insert into tb_categorias(tipo) values ("anti-flamatório");
insert into tb_categorias(tipo) values ("antigripal");
insert into tb_categorias(tipo) values ("antigastrico");


create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal (5,2) not null,
descricao varchar (255),
qtd varchar(255),
categorias_id bigint,
primary key(id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

insert into tb_produtos (nome, preco,descricao, qtd, categorias_id)
values ("Amoxicilina", 25,"comprimido", "1 caixa",1 );

insert into tb_produtos (nome, preco,descricao, qtd, categorias_id)
values ("Multigripe", 15,"comprimido", "1 caixa",4);

insert into tb_produtos (nome, preco,descricao, qtd, categorias_id)
values ("Neosaldina", 29,"gotas", "um frasco 15ml",2 );

insert into tb_produtos (nome, preco,descricao, qtd, categorias_id)
values ("Dorflex", 20,"comprimido", "1 caixa",2 );

insert into tb_produtos (nome, preco,descricao, qtd, categorias_id)
values ("Ésio Omeprazol", 61,"comprimido", "1 caixa",5 );

insert into tb_produtos (nome, preco,descricao, qtd, categorias_id)
values ("Tenoxicam", 30,"comprimido", "1 caixa",3 );

insert into tb_produtos (nome, preco,descricao, qtd, categorias_id)
values ("Clindamicina", 70,"comprimido", "1 caixa",1 );

insert into tb_produtos (nome, preco,descricao, qtd, categorias_id)
values ("Bezentazil", 16,"injetavel", "1 ampola 1ml",1 );

select * from tb_categorias;
select * from tb_produtos;

select* from tb_categorias inner join tb_produtos;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%B%";

select tb_produtos.nome, tb_produtos.preco, tb_produtos.descricao
from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where tb_categorias.tipo = "antigastrico";


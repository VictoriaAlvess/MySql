create database db_cidade_das_carnes2;
use db_cidade_das_carnes2;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categorias (tipo, ativo) values ("Bovino",true);
insert tb_categorias (tipo, ativo) values ("Suino",true);
insert tb_categorias (tipo, ativo) values ("Aves",true);
insert tb_categorias (tipo, ativo) values ("pertence feijoada",true);
insert tb_categorias (tipo, ativo) values ("imbutidos",true);

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(5,2) not null,
qtProduto int not null,
categorias_id bigint,
primary key (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);

insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("ASA",40.00,30,3);

insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("Picanha",20.00,30,1);

insert tb_produtos (nome, preco, qtProduto, categorias_id)
values ("coxa de frango",20.00,30,3);
 
insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("Bacon",30.00,30,1);

insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("hamburguer",60.00,30,5);

insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("Cupim",20.00,30,1);

insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("Peito de frango",25.00,30,3);

insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("Orelha de porco",20.00,30,4);

insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("Salame",18.00,30,5);

insert tb_produtos (nome, preco, qtProduto, categorias_id)
 values ("medalhao",50.00,30,3);
 
insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("mocoto",20.00,30,2);

insert tb_produtos (nome, preco, qtProduto, categorias_id) 
values ("chuleta",20.00,30,1);

select* from tb_categorias inner join tb_produtos;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "C%";

select tb_produtos.nome, tb_produtos.preco
from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where tb_categorias.tipo = "pertence feijoada";



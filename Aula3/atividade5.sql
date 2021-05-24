create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categorias(
id bigint auto_increment,
tipo varchar (255) not null,
disponivel boolean not null,
primary key (id)
);

insert into tb_categorias(tipo, disponivel) values("tintura", true);

insert into tb_categorias(tipo, disponivel) values("elétrica", true);

insert into tb_categorias(tipo, disponivel) values("hidraulica", true);

insert into tb_categorias(tipo, disponivel) values("materias básicos", true);

insert into tb_categorias(tipo, disponivel) values("ferramentas", true);

create table tb_produtos(
id bigint auto_increment,
nome varchar (255) not null,
descricao varchar (255),
preco decimal (5,2) not null,
qtd int not null not null,
categorias_id bigint,
primary key (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

insert into tb_produtos(nome, descricao, preco, qtd, categorias_id)
values ("tinta suvinil", "lata 18l branca", 480, 1,1);

insert into tb_produtos(nome, descricao, preco, qtd, categorias_id)
values ("telha", " fibrocimento", 40, 1,4);

insert into tb_produtos(nome, descricao, preco, qtd, categorias_id)
values ("furadeira", "Philco", 280, 1,5);

insert into tb_produtos(nome, descricao, preco, qtd, categorias_id)
values ("tinta coral", "lata 3,6l violeta", 500,1,1);

insert into tb_produtos(nome, descricao, preco, qtd, categorias_id)
values ("cano pvc", "3/4 Tigre", 22, 1,3);

insert into tb_produtos(nome, descricao, preco, qtd, categorias_id)
values ("lustre", "ferro forjado", 500, 1,2);

insert into tb_produtos(nome, descricao, preco, qtd, categorias_id)
values ("Serra", "mármore", 350, 1,5);

insert into tb_produtos(nome, descricao, preco, qtd, categorias_id)
values ("tijolo", "cerâmico", 480, 500,4);

select * from tb_categorias inner join tb_produtos;

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "C%";

select tb_produtos.nome, tb_produtos.preco
from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where tb_categorias.tipo = "tintura";

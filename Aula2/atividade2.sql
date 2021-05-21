create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
tipo varchar(255) not null,
marca varchar(255) not null,
modelo varchar (255) not null,
preco decimal(6,2) not null,
primary key(id)
);

insert into tb_produtos(tipo,marca,modelo,preco)
values("Notebook", "Dell","Gamer G3 i5",5579.10);

insert into tb_produtos(tipo,marca,modelo,preco)
values("Celular", "Samsung","Galaxy A51",1799.90);

insert into tb_produtos(tipo,marca,modelo,preco)
values("Celular", "Iphone","11s pro",1799.90);

insert into tb_produtos(tipo,marca,modelo,preco)
values("Relógio", "AEE tech","MI Band 5",169.00);

insert into tb_produtos(tipo,marca,modelo,preco)
values("Computador", "Positivo","All In One 23 HD Master",2289.00);

insert into tb_produtos(tipo,marca,modelo,preco)
values("Celular", "Xiaomi","Redmi 9",1015.00);

insert into tb_produtos(tipo,marca,modelo,preco)
values("Fone", "Philips","Philips True Wireless",159.00);

insert into tb_produtos(tipo,marca,modelo,preco)
values("Notebook", "Sony","Vaio i7",3800.00);


select * from tb_produtos where preco>500;
select * from tb_produtos where preco<500;

update tb_produtos set preco=5580.00 where id=1;
alter table tb_produtos modify preco decimal(6,2);







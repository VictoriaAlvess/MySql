create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categoria varchar(255) not null,
genero varchar(255) not null,
primary key(id)
);

insert into tb_classe(categoria, genero)
values("arqueiro", "masculino");

insert into tb_classe(categoria, genero)
values("guerreira", "feminino");
insert into tb_classe(categoria, genero)
values("mago", "masculino");

insert into tb_classe(categoria, genero)
values("assasino", "masculino");

insert into tb_classe(categoria, genero)
values("feiticeira", "feminino");

select * from tb_classe;

create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
armadura varchar (255) not null,
ataque int not null,
defesa int not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

insert into tb_personagens(nome,armadura,ataque,defesa, classe_id)
values("João", "média", 2100, 1500,1);

insert into tb_personagens(nome,armadura,ataque,defesa, classe_id)
values("Maria", "média", 2500, 1800,2);

insert into tb_personagens(nome,armadura,ataque,defesa, classe_id)
values("Gian", "leve", 1500, 2000,3);

insert into tb_personagens(nome,armadura,ataque,defesa, classe_id)
values("Jair", "levissima",1500,1001,4);

insert into tb_personagens(nome,armadura,ataque,defesa, classe_id)
values("Carla", "leve",1800,1550,5);

insert into tb_personagens(nome,armadura,ataque,defesa, classe_id)
values("Carol", "média",2600,1850,2);

insert into tb_personagens(nome,armadura,ataque,defesa, classe_id)
values("Carlos", "médio",2100,1900,1);

insert into tb_personagens(nome,armadura,ataque,defesa, classe_id)
values("Bea", "média",1900,1550,5);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%C%";

select * from tb_classe inner join tb_personagens on tb_personagens.id = tb_classe.id;

select tb_personagens.nome, tb_personagens.armadura, tb_personagens.ataque, tb_personagens.defesa 
from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_classe.categoria = "feiticeira";

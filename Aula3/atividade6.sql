create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categorias(
id bigint auto_increment,
tipo varchar (255) not null,
disponivel boolean,
primary key(id)
);

insert into tb_categorias (tipo, disponivel) values ("Bacharel", true);
insert into tb_categorias (tipo, disponivel) values ("Licenciatura", true);
insert into tb_categorias (tipo, disponivel) values ("Tecnologo", true);
insert into tb_categorias (tipo, disponivel) values ("Curso Livre", true);
insert into tb_categorias (tipo, disponivel) values ("Técnico", true);

create table tb_cursos(
id bigint auto_increment,
nome varchar(255) not null,
turno varchar(255) not null,
valor decimal (6,2) not null,
duracao varchar(50) not null,
categorias_id bigint,
primary key(id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

insert into tb_cursos(nome, turno, valor, duracao, categorias_id)
values ("Jornalismo", "noturno", 800, "4 anos", 1);

insert into tb_cursos(nome, turno, valor, duracao, categorias_id)
values ("Biologia", "matutino", 1000, "4 anos", 2);

insert into tb_cursos(nome, turno, valor, duracao, categorias_id)
values ("Análise e desenvolvimento de sistemas", "noturno", 400, "2 anos", 3);

insert into tb_cursos(nome, turno, valor, duracao, categorias_id)
values ("Git e git hub", "livre", 30, "8 horas", 4);

insert into tb_cursos(nome, turno, valor, duracao, categorias_id)
values ("Eclipse: primeiros passos", "livre", 50, "8 horas", 4);

insert into tb_cursos(nome, turno, valor, duracao, categorias_id)
values ("BootCamp Java", "integral", 0, "3 meses", 5);

insert into tb_cursos(nome, turno, valor, duracao, categorias_id)
values ("JavaScript", "livre", 40, "8 horas", 4);

insert into tb_cursos(nome, turno, valor, duracao, categorias_id)
values ("Medicina", "integral", 9000, "6 anos", 1);

select * from tb_categorias;
select * from tb_cursos;

select * from tb_categorias inner join tb_cursos;

select * from tb_cursos where valor > 50;
select * from tb_cursos where valor between 3 and 60;

select * from tb_cursos where nome like "%J%";

select tb_cursos.nome, tb_cursos.duracao
from tb_cursos inner join tb_categorias on tb_categorias.id = tb_cursos.categorias_id where tb_categorias.tipo = "Curso livre";




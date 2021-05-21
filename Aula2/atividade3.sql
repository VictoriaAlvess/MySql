create database db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar(255) not null,
data_nasc date not null,
turno varchar(255) not null,
serie varchar(255) not null,
nota decimal(4,1) not null,
primary key (id)
);

insert into tb_alunos(nome, data_nasc, turno, serie, nota)
values("Ana Souza", "2005-10-05","matutino", "1ºano", 8.5);

insert into tb_alunos(nome, data_nasc, turno, serie, nota)
values("Paulo Carmo", "2005-05-19","vespertino", "1ºano", 8.0);

insert into tb_alunos(nome, data_nasc, turno, serie, nota)
values("Jéssica Santos","2005-10-05","matutino", "1ºano", 10.0);

insert into tb_alunos(nome, data_nasc, turno, serie, nota)
values("Pedro Alves", "2005-01-08","matutino", "1ºano", 6.5);

insert into tb_alunos(nome, data_nasc, turno, serie, nota)
values("Gabriel dos Anjos", "2005-12-10","vespertino", "1ºano", 7.5);

insert into tb_alunos(nome, data_nasc, turno, serie, nota)
values("Claudia Santos", "2005-02-02","matutino", "1ºano", 9.5);

insert into tb_alunos(nome, data_nasc, turno, serie, nota)
values("Gian Correia","2005-03-06","matutino", "1ºano", 5.5);

insert into tb_alunos(nome, data_nasc, turno, serie, nota)
values("Rodrigo Araujo", "2005-11-11","matutino", "1ºano", 9.0);


select * from tb_alunos where nota>7;
select * from tb_alunos where nota<7;

update tb_alunos set nota = 7.0 where id=5;

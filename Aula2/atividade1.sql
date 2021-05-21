create database db_empresarh;
use db_empresarh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
data_nasc date not null,
departamento varchar(255) not null,
salario decimal(6,2) not null,
primary key (id)
);

insert into tb_funcionarios(nome,data_nasc,departamento, salario) 
values ("Paulo Silviano dos Anjos", "1960-05-08", "financeiro", 3500.00);

insert into tb_funcionarios(nome,data_nasc,departamento, salario) 
values ("Ana Carolina dos Santos", "1990-11-08", "administrativo", 1800.00);

insert into tb_funcionarios(nome,data_nasc,departamento, salario) 
values ("Victória Alves dos Santos", "2002-04-20", "TI", 4000.00);

insert into tb_funcionarios(nome,data_nasc,departamento, salario) 
values ("Daniel Conceição Silva", "1990-11-08", "comercial", 3000.00);

insert into tb_funcionarios(nome,data_nasc,departamento, salario) 
values ("Thayna Mendes Fonseca", "1989-07-11", "operacional", 3000.00);


select * from tb_funcionarios where salario>2000.00;
select * from tb_funcionarios where salario <2000.00;

update tb_funcionarios set salario = 3800.00 where id = 1;
alter table tb_funcionarios modify salario decimal(6,2);

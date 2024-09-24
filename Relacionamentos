create database relacionamentos1

 use relacionamentos1
 
 create table funcionarios(
 id int primary key identity(1,1),
 nome varchar (60),
 telefone char(9)
 )

create table dependentes(
 id int primary key identity(1,1),
 nome varchar (60) not null,
 grauParent varchar (20) not null,
 idFunc int
 constraint fk_dependentes_funcionarios foreign key(idFunc)
 references funcionarios(id)
 )

 insert into funcionarios
 values ('Lucas','1111-1111')
 insert into funcionarios
 values ('Rodrigo','1456-1512')
 insert into funcionarios
 values ('Carlos','5467-5320')

select * from funcionarios
select * from dependentes


insert into dependentes
values('Eduardo','Filho',1)
insert into dependentes
values('Marcos','Pai',2)

create database acbanco
use acbanco

create table livros(
id int primary key identity (1,1),
nomeLivro varchar(80),
genero varchar (80)
)
create table autores(
id int primary key identity (1,1),
nomeAutores varchar (80)
)

create table autoresLivros(
id int primary key identity (1,1),
idLivro int not null,
idAutores int not null,
constraint fk_autores_autoresLivros  foreign key (idAutores )
references autores(id),
constraint fk_livros_autoresLivros foreign key (idLivro)
references livros(id)
)

insert into livros (nomeLivro, genero)
values ('Fazendo dinheiro com trap', 'Biografia')
insert into livros (nomeLivro, genero)
values ('Segredos da comedia stand-up', 'Comedia')
insert into livros (nomeLivro, genero)
values ('A filha feia', 'Drama')
insert into livros (nomeLivro, genero)
values ('Como entrei no 7', 'Financeiros')
insert into livros (nomeLivro, genero)
values ('O tiger', 'Financeiros')
insert into livros (nomeLivro, genero)
values ('Cade o 7?', 'investigação')

insert into autores (nomeAutores)
values ('Mc Gp')
insert into autores (nomeAutores)
values ('Thiago Nigro')
insert into autores (nomeAutores)
values ('Leandrinha')
insert into autores (nomeAutores)
values ('Sargento Fahur')
insert into autores (nomeAutores)
values ('Buzeira')
insert into autores (nomeAutores)
values ('Leo Lins')
insert into autores (nomeAutores)
values ('Veigh')

insert into autoresLivros (idLivro, idAutores)
values (1, 7)
insert into autoresLivros (idLivro, idAutores)
values (1, 1)
insert into autoresLivros (idLivro, idAutores)
values (2, 6)
insert into autoresLivros (idLivro, idAutores)
values (3, 3)
insert into autoresLivros (idLivro, idAutores)
values (4, 1)
insert into autoresLivros (idLivro, idAutores)
values (4, 5)
insert into autoresLivros (idLivro, idAutores)
values (5, 5)
insert into autoresLivros (idLivro, idAutores)
values (6, 4)


select livros.nomeLivro, autores.nomeAutores, livros.genero from autoresLivros
inner join livros on livros.id = autoresLivros.idLivro
inner join autores on autores.id = autoresLivros.idAutores



select livros.nomeLivro, autores.nomeAutores, livros.genero from autoresLivros
inner join livros on livros.id = autoresLivros.idLivro
inner join autores on autores.id = autoresLivros.idAutores
where livros.id = 2

select livros.nomeLivro, autores.nomeAutores, livros.genero from autoresLivros
inner join livros on livros.id = autoresLivros.idLivro
inner join autores on autores.id = autoresLivros.idAutores
where autores.id = 7

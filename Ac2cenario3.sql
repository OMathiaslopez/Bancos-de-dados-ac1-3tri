create database spotify

use spotify

create table musicas(
	id int primary key identity(1,1),
	nomeMusica varchar(80),
	genero varchar(80)
	
)

create table artista(
	id int primary key identity(1,1),
	nomeArtista varchar(80),

)

create table musicaArtista(
	id int primary key identity(1,1),
	idMusica int not null,
	idArtista int not null,
	constraint fk_musica_musicaArtista foreign key (idMusica)
	references musicas(id),
	constraint fk_artista_musicaArtista foreign key (idArtista)
	references artista(id)
)


insert into musicas (nomeMusica, genero)
values('300 no 7','funk')
insert into musicas (nomeMusica, genero)
values('Vida chique','trap')
insert into musicas (nomeMusica, genero)
values('Isis','funk')
insert into musicas (nomeMusica, genero)
values('The box medley funk 2','funk')
insert into musicas (nomeMusica, genero)
values('Lista de contato','trap')
insert into musicas (nomeMusica, genero)
values('Ok!Ok!','trap')
insert into musicas (nomeMusica, genero)
values('clickbait','trap')
insert into musicas (nomeMusica, genero)
values('camisa 10','pagode')

select * from musicas

insert into artista (nomeArtista)
values('Veigh')
insert into artista (nomeArtista)
values('Mc Gp')
insert into artista (nomeArtista)
values('Brocasito')
insert into artista (nomeArtista)
values('Teto')
insert into artista (nomeArtista)
values('Mc Brinquedo')
insert into artista (nomeArtista)
values('Mc Tuto')
insert into artista (nomeArtista)
values('Turma do Pagode')
insert into artista (nomeArtista)
values('Ryu, the runner')
insert into artista (nomeArtista)
values('Dudu')

insert into musicaArtista (idMusica, idArtista)
values(1 ,2 )
insert into musicaArtista (idMusica, idArtista)
values(2 ,1 )
insert into musicaArtista (idMusica, idArtista)
values(3 ,7 )
insert into musicaArtista (idMusica, idArtista)
values(4 , 5)
insert into musicaArtista (idMusica, idArtista)
values(4 ,6 )
insert into musicaArtista (idMusica, idArtista)
values(5 ,8 )
insert into musicaArtista (idMusica, idArtista)
values(5 ,9 )
insert into musicaArtista (idMusica, idArtista)
values(6 ,3 )
insert into musicaArtista (idMusica, idArtista)
values(6 ,4 )
insert into musicaArtista (idMusica, idArtista)
values(7 ,1 )
insert into musicaArtista (idMusica, idArtista)
values(8 ,7 )


select musicas.nomeMusica, artista.nomeArtista, musicas.genero from musicaArtista
inner join musicas on musicas.id = musicaArtista.idMusica
inner join artista on artista.id = musicaArtista.idArtista


select musicas.nomeMusica, artista.nomeArtista, musicas.genero from musicaArtista
inner join musicas on musicas.id = musicaArtista.idMusica
inner join artista on artista.id = musicaArtista.idArtista
where artista.id = 2


select musicas.nomeMusica, artista.nomeArtista, musicas.genero from musicaArtista
inner join musicas on musicas.id = musicaArtista.idMusica
inner join artista on artista.id = musicaArtista.idArtista
where musicas.id = 4

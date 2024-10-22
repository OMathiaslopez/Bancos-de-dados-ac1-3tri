create database AC1bd
 
use AC1bd
 
create table alunos(
id int primary key identity (1,1),
nomeAluno varchar(100) not null,
idadeAluno int not null
)
insert into alunos(nomeAluno, idadeAluno)
values ('eloah','16') insert into alunos(nomeAluno, idadeAluno)
values ('mathias','17') insert into alunos( nomeAluno, idadeAluno)
values ('carlos','16') insert into alunos(nomeAluno, idadeAluno)
values ('maria','15') insert into alunos(nomeAluno, idadeAluno)
values ('andre','17')
 
create table cursos(
id int primary key identity (1,1),
nomeCurso varchar(100) not null,
precoCurso float not null
) insert into cursos(nomeCurso, precoCurso)
values ('cinema','1500')
insert into cursos(nomeCurso, precoCurso)
values ('gestão de T.I','1600')
insert into cursos(nomeCurso, precoCurso)
values ('publicidade','768')
insert into cursos(nomeCurso, precoCurso)
values ('culinaria','1650')
insert into cursos(nomeCurso, precoCurso)
values ('linguagem de programaçaõ','1200')
insert into cursos(nomeCurso, precoCurso)
values ('banco de dados','600')
 
create table alunos_cursos(
id int primary key identity (1,1),
idAlunos int not null,
idCursos int not null,
constraint fk_alunos_alunosCursos
foreign key (idAlunos) references alunos (id),
constraint fk_cursos_alunosCursos
foreign key (idCursos) references cursos (id)
)
insert into alunos_cursos(idAlunos,idCursos)
values(1,1)
insert into alunos_cursos(idAlunos,idCursos)
values(2,2)
insert into alunos_cursos(idAlunos,idCursos)
values(3,3)
insert into alunos_cursos(idAlunos,idCursos)
values(4,4)
insert into alunos_cursos(idAlunos,idCursos)
values(4,5)
insert into alunos_cursos(idAlunos,idCursos)
values(5,6)
 
 
select alunos.nomeAluno, cursos.nomeCurso from alunos_cursos
inner join alunos on alunos.id = alunos_cursos.idAlunos
inner join cursos on cursos.id = alunos_cursos.idCursos
where alunos.id=1
 
select alunos.nomeAluno, cursos.nomeCurso from alunos_cursos
inner join alunos on alunos.id = alunos_cursos.idAlunos
inner join cursos on cursos.id = alunos_cursos.idCursos
where alunos.id=2
 
select alunos.nomeAluno, cursos.nomeCurso from alunos_cursos
inner join alunos on alunos.id = alunos_cursos.idAlunos
inner join cursos on cursos.id = alunos_cursos.idCursos
where alunos.id=3
 
select alunos.nomeAluno, cursos.nomeCurso from alunos_cursos
inner join alunos on alunos.id = alunos_cursos.idAlunos
inner join cursos on cursos.id = alunos_cursos.idCursos
where alunos.id=4
 
select alunos.nomeAluno, cursos.nomeCurso from alunos_cursos
inner join alunos on alunos.id = alunos_cursos.idAlunos
inner join cursos on cursos.id = alunos_cursos.idCursos
where alunos.id=5

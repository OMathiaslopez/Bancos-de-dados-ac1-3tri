create database AcBancos 

use AcBancos

create table Produtos(
ID INT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
Pre�o FLOAT NOT NULL,
Estoque INT,
categoria VARCHAR(50)
)
insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 1, 'Sabonete', 4, 25, 'limpeza')

insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 2, 'p�o de forma', 12, 45, 'Perecivel')

insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 6, 'Agua mineral', 3, 150, 'Bebidas')

insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 4, 'Licor 43', 10, 180, 'Bebidas')

insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 5, 'arroz', 15, 160, 'Perecivel')

insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 7, 'capinha iphone', 500, 60, 'capinha')

insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 8, 'nike tenis', 1000, 20, 'Tenis')

insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 9, 'monitor', 850, 90, 'Eletronico ')

insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 10, 'teclado', 250, 25, 'Eletronico')

insert into Produtos ( Id, Nome, Pre�o, Estoque, categoria)
values ( 11, 'Perfume Bvlgari', 780, 58, 'Perfume')

select* from produtos

select Nome, Pre�o from Produtos
order By Nome

select Nome, Pre�o from Produtos
where Pre�o>100.00;

select Id, Nome, Pre�o, Estoque, categoria from Produtos
where estoque >0
order By Pre�o desc

select Max(Pre�o) from Produtos 
select min (Pre�o) from Produtos	

select Id, Nome, Pre�o, Estoque, categoria from Produtos
where Pre�o>=500 and Pre�o<=1000

select Id, Nome, Pre�o, Estoque, categoria from Produtos
where categoria = 'Eletronico' and Pre�o>=350

select sum(Pre�o) from Produtos

select avg(Pre�o) from Produtos
where estoque > 0 and pre�o < 600 and categoria = 'Perecivel'


select Id, Nome, Pre�o, Estoque, categoria from Produtos
where Nome like 'Smartphone%'

select min(Pre�o) from Produtos
where Estoque >0

select Id, Nome, Pre�o, Estoque, categoria from Produtos
where Nome like '%em p�' and Estoque>0
order by Pre�o desc

select Id, Nome, Pre�o, Estoque, categoria from Produtos 
where Estoque<0 
order by Nome

select count(Id)from Produtos 
where Estoque<0 

select count(Id) from Produtos 
where Estoque>0 and categoria ='Limpeza'

select * from Produtos
where Pre�o<50

select Id, Nome, Pre�o, Estoque, categoria from Produtos
where nome like '%Promo��o%'
create database automoveis

use automoveis

create table carros(
  id int primary key,
  marca varchar(15) not null,
  modelo varchar(30),
  anoFabricacao date,
  precoInicial float not null
  
)
go

alter table carros
alter column precoInicial money not null

insert into carros
(id,marca,modelo,anoFabricacao,precoInicial)
values (1,'Toyota','Corolla','2018',167.000)

insert into carros
(id,marca,modelo,anoFabricacao,precoInicial)
values (2,'Honda','Civic','2015',66.399)

insert into carros
(id,marca,modelo,anoFabricacao,precoInicial)
values (3,'Ford','Mustang','2024',486.000)

insert into carros
(id,marca,modelo,anoFabricacao,precoInicial)
values (4,'Chevrolet','Onix','2018',46.586)

insert into carros
(id,marca,modelo,anoFabricacao,precoInicial)
values (5,'Lamborghini','Urus','2017',900.000)

 select * from carros

update carros set precoInicial=precoInicial*1.05
where anoFabricacao='2018'

update carros set precoInicial=precoInicial-(precoInicial*0.1)
where marca='Toyota'

update carros set anoFabricacao='2022'
where id=2

alter table carros
add corCarro varchar(12)

UPDATE carros set corCarro = 'Azul'
where precoInicial > 30000;


update carros set modelo='Accord'
where id=2
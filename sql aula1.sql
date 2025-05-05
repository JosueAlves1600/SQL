create database aula1
go

use aula1
go

create table produtos(
    id int primary key,
	nomeProduto varchar(15) not null,
	dataValidade date, 
	precoProduto float not null
)
go

alter table produtos
add fornecedor varchar(25)
go

alter table produtos
alter column nomeProduto varchar(20)
go

alter table produtos
drop column dataValidade
go

drop table produtos
go

drop database aula1
go
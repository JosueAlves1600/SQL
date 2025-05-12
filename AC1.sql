create database AC1
go

use AC1
go

create table clientes(
   ID_clientes INT primary key,
   nome varchar(20) not null,
   email varchar(40) not null,
   idade int 

)
go

alter table clientes
   add endereço varchar(100) not null
   go

create table produtos(
   ID_produto int primary key,
   nome varchar(20) not null,
   preço float

)
go

alter table produtos
   add descrição varchar(255)
   go

create table ordens(
   ID_ordens int primary key,
   ID_Clientes int,
   ID_produtos int,
   quantidade int 

)
go

alter table ordens
   add data_pedido date
   go

alter table clientes
   drop column idade
   go

create table categorias(
   ID_categoria int primary key,
   nome varchar(20) not null

)
go

alter table produtos
   add ID_Categoria int
   go

create table estoque(
   ID_Produto int primary key,
   Quantidade int

)
go

alter table clientes
   add data_cadastro datetime
   go

create table fornecedores(
   ID_Fornecedor int primary key,
   nome varchar(20) not null,
   telefone char(8)

)
go

alter table produtos
   add ID_Fornecedor int
   go

create table detalhes_pedido(
   ID_detalhe int primary key,
   ID_pedido int,
   ID_Produto int, 
   Quantidade int

)
go

alter table detalhes_pedido
   drop column ID_Produto
   go

alter table produtos
   alter column preço money
   go

drop table categorias
go
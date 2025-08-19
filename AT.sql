create database AT

use AT

create table ProdutosLoja(
  ID_Produto int primary key,
  Nome_Produto varchar(255) not null,
  Preco_Unitario money,
  Quantidade_Estoque int

)

insert into ProdutosLoja(ID_Produto,Nome_Produto,Preco_Unitario,Quantidade_Estoque)
values(1,'Camisa Polo',80.00,40)

insert into ProdutosLoja(ID_Produto,Nome_Produto,Preco_Unitario,Quantidade_Estoque)
values(2,'Calça moletom',100.00,70)

insert into ProdutosLoja(ID_Produto,Nome_Produto,Preco_Unitario,Quantidade_Estoque)
values(3,'Calça jeans',70.00,150)

select * from ProdutosLoja

update ProdutosLoja
set Preco_Unitario = Preco_Unitario + 40
where Preco_Unitario = 80.00

update ProdutosLoja
set Quantidade_Estoque = 400
where Quantidade_Estoque = 150

delete from ProdutosLoja
where Nome_Produto = 'Calça moletom'


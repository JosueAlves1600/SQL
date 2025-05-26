create database aulaDML

use aulaDML

create table produtos(
    id int primary key,
	nomeProduto varchar(30) not null,
	descricaoProduto varchar(100) not null,
	dataValidade date,
	tipo varchar(15) not null,
	precoCompra float not null,
	precoVenda float
)

insert into produtos
 (id,nomeProduto,descricaoProduto,dataValidade,tipo,precoCompra,precoVenda)
 values (1,'Bom Bril','Palha de uso doméstico',null,'Palha de aço',5,7.5)

 select * from produtos

 insert into produtos 
  (id,nomeProduto,descricaoProduto,dataValidade,tipo,precoCompra,precoVenda)
  values (2,'Smart TV LG','UHD 4K 60pol.',null,'Eletronico',2500,null)

 insert into produtos 
  (id,nomeProduto,descricaoProduto,dataValidade,tipo,precoCompra,precoVenda)
  values (3,'Mouse gamer sem fio','Maior precisão para seus jogos',null,'Informática',72.8,101.36)

 insert into produtos 
  (id,nomeProduto,descricaoProduto,dataValidade,tipo,precoCompra,precoVenda)
  values (4,'Leite Longa Vida','Embalagem 1 litro','2025-7-30','Laticínio',2.36,null)

/*Excluir dados da tabela

 delete from produtos  
 where id=1 */
 
 /* Atualizar dados da tabela*/
 
 update produtos set nomeProduto='Leite tipo A'
 where id=4

 select * from produtos 

 update produtos set descricaoProduto='Garrafa de 1 litro',
 dataValidade='2025-06-25', precoCompra=3.14
 where id=4

 /* Preço de venda é sempre 30% superior ao preço de compra*/

 update produtos set precoVenda=precoCompra*1.3

 /*Conceder 10% de desconto aos produtos que custem mais de R%100*/

 update produtos set precoVenda=precovenda-(precoVenda*0.1)
 where precoVenda>100

 /*
OPERADORES RELACIONAIS
> maior que
< menor que
>= maior ou igual
<= menor ou igual
= igual
!= diferente
*//*Aplicar 3% de aumento (ao preço de venda)
aos produtos com precço entre R$5 e R$10*/

update produtos set precoVenda=precoVenda*1.03
where precoVenda>=5 and precoVenda<=10/*Conceder 2% de desconto a todos os produtos do setor
ELETRONICO que custem menos de R$3000*/

update produtos set precoVenda=precoVenda-(precoVenda*0.02)
where tipo='ELETRONICO' and precoVenda<3000/* OPERADORES LÓGICOS
and
or
not
*/
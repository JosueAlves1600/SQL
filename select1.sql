create database exercicio

use exercicio

create table veiculos(
  placa char(7) primary key not null,
  marca varchar(20) not null,
  modelo varchar(20) not null,
  cor varchar(20) not null,
  ano int not null,
  valor_de_compra money not null,
  valor_de_venda money not null

)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('ABC1D34','CHEVROLET','Onix','Cinza',2024,88.476,100.000)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('DAB1D84','CHEVROLET','Montana','Preta',2024,125.260,135.500)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('AFD3A87','CHEVROLET','Equinox','Preta',2023,150.000,170.000)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('DAB3S09','VOLKS','SUVs','Vermelho',2016,70.000,80.200)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('SAD4F65','VOLKS','T-Cross','Vermelho',2023,104.000,111.000)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('SQW6W32','VOLKS','Virtus','Cinza',2022,90.000,124.000)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('DAB4G53',' FORD','Mustang','Azul',2012,120.000,170.000)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('KKL4H53',' FORD','Transit','Azul',2018,150.000,190.000)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('KKL4H43',' FORD','Maverick','Preta',2013,30.000,50.000)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('KPL4H89',' FIAT','Cronos','Preta',2024,90.000,110.000)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('TYL2Y49',' FIAT','Argo','Vermelha',2024,83.490,110.080)

insert into veiculos(placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda)
values('DAB2Y98',' FIAT','Fastback','Azul',2024,127.990,168.080)

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos
order by modelo

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos
order by Valor_de_Venda desc

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos
order by ano

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos
where placa like 'DAB%'

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos
where marca='FIAT'

select count(placa) from veiculos

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos
where ano<2010select count(placa) from veiculos
where ano>=2011 and ano<=2016

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos
where Valor_de_compra>=50000 and Valor_de_compra<=65000

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos
where Valor_de_compra>30000 and ano>=2013 and ano<=2020

select placa,marca,modelo,cor,ano,valor_de_compra,valor_de_venda from veiculos
where modelo='FORD' and ano=2022
order by modelo
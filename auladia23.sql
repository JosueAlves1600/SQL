create database CampeonatosGamer;

use CampeonatosGamer;

create table JOGOS(
  id int primary key,
  nome varchar(35) not null,
  genero varchar(20),
  desenvolvedor varchar(35) not null,
  nota_media float not null
)

create table JOGADORES(
  id int primary key,
  nome varchar(50) not null,
  nickname varchar(25) not null,
  email varchar(30) not null,
  ranking decimal
)

create table TIMES(
  id int primary key,
  nome varchar(30) not null,
  jogo varchar(35) not null,
  pais varchar(25)
)

create table TORNEIOS(
  id int primary key,
  nome varchar(35) not null,
  jogo varchar(35) not null,
  premiacao_total money,
  data_inicio date,
  data_fim date
)

create table PARTICIPACOES(
  id int primary key,
  torneio varchar(35) not null,
  times varchar(30) not null,
  colocacao decimal not null
)

create table AVALIACOES(
  id int primary key,
  jogo varchar(35) not null,
  jogador varchar(25) not null,
  nota float not null,
  comentario varchar(150)
)

insert into JOGOS (id,nome,genero,desenvolvedor,nota_media)
values 
(1,'Valorant','FPS','RiotGames',4.7)
select * from JOGOS

insert into JOGADORES (id,nome,nickname,email,ranking)
values
(2,'Lucas Almeida','Lukaz','lukaz123@email.com',1200)
select * from JOGADORES

insert into TIMES (id,nome,jogo,pais)
values
(3,'Phoenix e Sports','Valorant','Brasil')
select * from TIMES

insert into TORNEIOS (id,nome,jogo,premiacao_total,data_inicio,data_fim)
values
(4,'Desafio Global 2025','Valorant',100000,'2025-09-10','2025-09-20')
select * from TORNEIOS

insert into PARTICIPACOES (id,torneio,times,colocacao)
values
(5,'Phoenix e Sports','Desafio Global 2025',2)
select * from PARTICIPACOES

insert into AVALIACOES (id,jogo,jogador,nota,comentario)
values
(6,'Valorant','Lucas Almeida',5,'Muito viciante e competitivo!')
select * from AVALIACOES 

update AVALIACOES
set nota = 4.8
where nota = 5

update JOGADORES
set ranking = ranking + 200
where ranking = 1200

insert into JOGOS (id,nome,genero,desenvolvedor,nota_media)
values
(7,'Fortnite','Battle Royale','Epic Games',4.6)
select * from JOGOS

insert into TIMES (id,nome,jogo,pais)
values
(8,'Storm Breakers','Fortnite','Estados Unidos')

update TIMES
set pais = 'Estados Unidos'
where pais = 'Brasil'
update TIMES
set jogo = 'Fortnite'
where jogo = 'Valorant'

update TIMES
set pais = 'Portugal'
where pais = 'Estados Unidos'

insert into TORNEIOS (id,nome,jogo,premiacao_total,data_inicio,data_fim)
values
(9,'Copa Fortnite 2025','Fortnite',50000,'2025-08-01','2025-08-10')
select * from TORNEIOS

update PARTICIPACOES
set colocacao = 1
where colocacao = 2
update PARTICIPACOES
set torneio = 'Storm Breakers'
where torneio = 'Phoenix e Sports'
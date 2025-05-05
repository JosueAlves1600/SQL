create database exercicios1
go

use exercicios1
go

create table Alunos(
  matricula INT primary key,
  nome varchar(20) not null,
  escola varchar(20)
)
go

create table Disciplinas(
  codigo char(8) primary key,
  nome varchar(20) not null,
  registro char(5),
  escola varchar(20)
)
go

create table Historico(
  matricula int primary key,
  codigo char(5),
  nota float 
)
go

create table Professor(
  registro char(5) primary key,
  nome varchar(20) not null,
  admissao date
)
go

alter table Alunos
add telefone char(8)
go

alter table Alunos
drop column telefone
go

alter table Professor
add formacao varchar(15)
go

alter table Alunos
add email varchar(35)
go

alter table Disciplinas
drop column registro
go

alter table Historico
add bimestre int
go

alter table Alunos 
drop column escola
go

drop table Alunos
go

drop table Disciplinas
go

drop table Historico 
go

drop table Professor 
go

drop database exercicios1
go
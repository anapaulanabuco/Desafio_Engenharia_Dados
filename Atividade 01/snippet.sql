create database desafio_engenheiro
go
use desafio_engenheiro
go
create table cliente (
cliente_id bigint primary key not null identity(1,1),
nome varchar(30) not null
)
go
insert cliente values ('Cliente A')
insert cliente values ('Cliente B')
insert cliente values ('Cliente C')
insert cliente values ('Cliente D')
go
create table contrato (
	contrato_id bigint primary key not null identity(1,1),
	ativo bit not null,
	percentual numeric(10,2) not null,
	cliente_id bigint not null foreign key references cliente(cliente_id)
	)
go
insert into contrato values (1, 2, 1)
insert into contrato values (0, 1.95, 1)
insert into contrato values (1, 1, 2)
insert into contrato values (1, 3, 4)
go

create table transacao (
	transacao_id bigint primary key not null identity(1,1),
	contrato_id bigint not null foreign key references contrato(contrato_id),
	valor_total money not null,
	percentual_desconto numeric(10,2) null
	)
go
insert into transacao values (1, 3000, 6.99)
insert into transacao values (2, 4500, 15)
insert into transacao values (1, 57989, 1.45)
insert into transacao values (4, 1, 0)
insert into transacao values (4, 35, null)
go
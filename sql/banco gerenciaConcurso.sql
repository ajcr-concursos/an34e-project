create database gerenciaconcurso;
use gerenciaconcurso;
create table candidato(
	id int auto_increment primary key,
	nome varchar(45) not null,
	email varchar(45) unique not null,
	senha varchar(20) not null,
	cpf varchar(11) unique not null,
	data_nascimento date
);

create table area (
	id int auto_increment primary key,
	nome varchar(45) not null
);

create table area_candidato(
	id_candidato int,
	id_area int,
	primary key (id_candidato,id_area),
	foreign key (id_candidato) references candidato(id),
	foreign key (id_area) references area(id)
);

create table empresa(
	id int auto_increment primary key,
	nome varchar(45) not null,
	email varchar(45) unique not null,
	senha varchar(20) not null,
	cnpj varchar(16) unique not null,
	rua varchar(45) not null,
	bairro varchar(45) not null,
	numero varchar(45) not null
);

create table concurso(
	id int auto_increment primary key,
	nome varchar(45),
	qtd_vagas int,
	data_prova date,
	id_empresa int,
	foreign key (id_empresa) references empresa(id)
);

create table resultado(
	id int auto_increment primary key,
	gabarito varchar(255),
	id_concurso int,
	foreign key (id_concurso) references concurso(id)
);

create table area_concurso(
	id_area int,
	id_concurso int,
	primary key (id_area, id_concurso),
	foreign key (id_area) references area(id),
	foreign key (id_concurso) references concurso(id)
);


create table inscricao(
	id_concurso int not null,
	id_candidato int not null,
	primary key (id_concurso, id_candidato),
	foreign key (id_concurso) references concurso(id),
	foreign key (id_candidato) references candidato(id)
);
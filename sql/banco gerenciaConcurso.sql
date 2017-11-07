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

CREATE TABLE INSTITUIÇÃO(
    ID INT AUTO_INCREMENT PRIMARY KEY,
	NOME VARCHAR(45) NOT NULL,
	CNPJ VARCHAR(16)UNIQUE NOT NULL
);

CREATE TABLE CONCURSO(
	ID INT AUTO_INCREMENT PRIMARY KEY,
	QTD_VAGAS INT,
	DATA_PROVA DATE,
	ID_INSTITUICAO INT,
	FOREIGN KEY (ID_INSTITUICAO) REFERENCES INSTITUIÇÃO(ID)
);

CREATE TABLE RESULTADO(
	ID INT AUTO_INCREMENT PRIMARY KEY,
	GABARITO VARCHAR(255),
	ID_CONCURSO INT,
	FOREIGN KEY (ID_CONCURSO) REFERENCES CONCURSO(ID)
);

CREATE TABLE AREA_CONCURSO(
	ID_AREA INT,
	ID_CONCURSO INT,
	PRIMARY KEY (ID_AREA, ID_CONCURSO),
	FOREIGN KEY (ID_AREA) REFERENCES AREA(ID),
	FOREIGN KEY (ID_CONCURSO) REFERENCES CONCURSO(ID)
);























=======
create table instituicao(
	id int auto_increment primary key,
	nome varchar(45) not null,
	email varchar(45) unique not null,
	senha varchar(20) not null,
	cnpj varchar(16) unique not null
);

create table resultado(
	
);
>>>>>>> 7dc6542342a8db315b13e2c91199fadbf976848c

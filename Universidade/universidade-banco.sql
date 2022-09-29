create database Universidade;
	use BancoUniversidade;
create table alunos(
	MAT varchar(15),
	nome varchar(100),
	rua varchar(30),
	local varchar(15),
	cidade varchar(60),
	primary key(MAT));

create table disciplinas(
	COD_DISC varchar(10),
	nome varchar(60),
	carga_hor time,
	primary key(COD_DISC));

create table professores(
	COD_PROF varchar(10),
	nome varchar(100),
	rua varchar(30),
	cidade varchar(60),
	primary key(COD_PROF));

create table turma(
	COD_DISC varchar(10),
	COD_TURMA integer,
	COD_PROF varchar(10),
	ANO integer ,
	horario varchar(20),
	primary key(COD_DISC, COD_TURMA, COD_PROF, ANO),
	foreign key(COD_DISC) references disciplinas(COD_DISC),
	foreign key(COD_PROF) references professores(COD_PROF));

create table historico(
	MAT varchar(15),
	COD_DISC varchar(10),
	COD_TURMA integer,
	COD_PROF varchar(10),
	ANO integer,
	frequencia integer,
	nota float,
	primary key(MAT, COD_DISC, COD_TURMA, COD_PROF, ANO),
	foreign key(COD_DISC, COD_TURMA, COD_PROF, ANO) references turma(COD_DISC, COD_TURMA, COD_PROF, ANO),
	foreign key(MAT) references alunos(MAT));

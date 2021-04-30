CREATE DATABASE SENAI_HROADS_MANHA; 
USE SENAI_HROADS_MANHA;

CREATE TABLE TiposUsuarios
(

	idTipoUsuario INT PRIMARY KEY IDENTITY
	,Titulo VARCHAR(50) NOT NULL UNIQUE

);

CREATE TABLE Usuarios
(

	IdUsuario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(250) NOT NULL
	,Email VARCHAR(250) UNIQUE NOT NULL
	,Senha VARCHAR(250) NOT NULL
	,idTipoUsuario INT FOREIGN KEY REFERENCES TiposUsuarios(idTipoUsuario) NOT NULL

);

CREATE TABLE Classes
(
	IdClasse INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(100) NOT NULL
);

CREATE TABLE Personagens
(
	IdPersonagem INT PRIMARY KEY IDENTITY
	,IdClasse INT FOREIGN KEY REFERENCES Classes(IdClasse) NOT NULL
	,Nome VARCHAR(200)NOT NULL
	,CapacidadeVida INT NOT NULL
	,CapacidadeMana INT NOT NULL
	,DataAtualizacao DATE NOT NULL
	,DataCriacao DATE NOT NULL
);

CREATE TABLE TiposDeHabilidades
(
	IdTipoHabilidade INT PRIMARY KEY IDENTITY 
	,Nome VARCHAR(200)
);



CREATE TABLE Habilidades
(
	IdHabilidade INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
	,IdTipoHabilidade INT FOREIGN KEY REFERENCES TiposDeHabilidades(IdTipoHabilidade)
);

CREATE TABLE Classes_Habilidades
(
	IdClasse INT FOREIGN KEY REFERENCES Classes(IdClasse)
	,IdHabilidade INT FOREIGN KEY REFERENCES Habilidades(IdHabilidade)
);


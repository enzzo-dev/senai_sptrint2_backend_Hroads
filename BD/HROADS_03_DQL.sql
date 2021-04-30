USE SENAI_HROADS_MANHA;

--Selecionar todos os tipos de usu�rios e mostrar na tela
SELECT Titulo FROM TiposUsuarios;

--Selecionar todos os usu�rios criados no sistema junto com seu nivel de permiss�o
SELECT U.Nome, U.Email , TU.Titulo FROM Usuarios U
INNER JOIN TiposUsuarios TU
ON U.idTipoUsuario = TU.idTipoUsuario;

--Selecionar todas as habilidades e seus tipos cadastrados e mostrar para o usu�rio
SELECT H.Nome, TH.Nome AS Tipo FROM Habilidades H
INNER JOIN TiposDeHabilidades TH
ON H.IdTipoHabilidade = TH.IdTipoHabilidade;

--Selecionar todas as classes de personagens  existentes
SELECT C.Nome FROM Classes C;


--Selecionar todos os personagens e suas habilidades
SELECT P.Nome, C.Nome AS Classe FROM Personagens P
INNER JOIN Classes C
ON P.IdClasse = C.IdClasse;

--Personagens e seus dados
SELECT P.Nome, P.CapacidadeVida AS Vida, P.CapacidadeMana AS Mana, P.DataCriacao AS Cria��o FROM Personagens P;

USE GUFI_MARCAUM
GO

--LISTA TODOS TIPOS DE USUARIO
SELECT * FROM tipoUsuario

--LISTA TODOS USUARIOS
SELECT * FROM usuario

--> LISTA TODOS OS TIPOS DE EVENTOS
SELECT * FROM tipoEvento

SELECT * FROM evento

--> LISTA DE TODAS AS PRESENCAS
SELECT * FROM presenca

--> LISTA TODAS AS INSTUICOES
SELECT * FROM instituicao

--> LISTA DE TODAS AS SITUACOES
SELECT * FROM situacao

-->SELECIONAR OS DADOS DOS EVENTOS , DA INSTITUICAO E DOS TIPOS DE EVENTOS
SELECT I.nomeFantasia, 
	   TE.tituloTipoEvento, 
	   E.nomeEvento, E.descricao, 
	   E.acessoLivre, 
	   E.DataEvento 
FROM evento E
INNER JOIN tipoEvento TE ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN instituicao I ON E.idInstituicao = I.idInstituicao

-- Seleciona os dados dos usuários mostrando o tipo de usuário
SELECT U.nomeUsuario [Usuario], 
	   TU.tituloTipoUsuario [Tipo de Usuario] 
FROM usuario U
INNER JOIN tipoUsuario TU ON U.idTipoUsuario = TU.idTipoUsuario

-- Seleciona os dados dos eventos, da instituição, dos tipos de eventos 
--e dos usuários
-- e a situacao da presenca
SELECT U.nomeUsuario 'Usuário', 
	   E.nomeEvento 'Evento', 
	   I.nomeFantasia 'Instituição', 
	   TE.tituloTipoEvento 'Tipo de Evento', 
	   S.descricao 'Situação' 
FROM usuario U
INNER JOIN presenca P ON U.idUsuario = P.idUsuario
INNER JOIN evento E ON P.idEvento = E.idEvento
INNER JOIN tipoEvento TE ON E.idTipoEvento = TE.idTipoEvento
INNER JOIN situacao S ON P.idSituacao = S.idSituacao
INNER JOIN instituicao I ON E.idInstituicao = I.idInstituicao

-- Busca um usuário através do seu e-mail e senha
SELECT U.nomeUsuario, 
	   TU.tituloTipoUsuario, 
	   U.email, 
	   U.senha 
FROM usuario U 
JOIN tipoUsuario TU ON U.idTipoUsuario = TU.idTipoUsuario
WHERE email = 'LUCAS@LUCAS.COM'
AND senha = 'senha123'
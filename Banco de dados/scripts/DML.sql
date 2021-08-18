USE GUFI_MARCAUM
GO

--TIPO USUARIO
INSERT INTO tipoUsuario (tituloTipoUsuario)
VALUES ('ADMINISTRADOR'), ('COMUM');
GO

--INTITUICAO
INSERT INTO instituicao (cnpj, nomeFantasia, endereco)
VALUES ('9999999999999', 'ESCOLA SENAI INFORMATICA', 'Al. Bar�o de Limeira, 539');
GO

--TIPO EVENTO
INSERT INTO tipoEvento(tituloTipoEvento)
VALUES('C#'), ('ReactJs'), ('SQL');
GO

--SITUACAO
INSERT INTO situacao(descricao)
VALUES ('APROVADA'), ('RECUSADA'), ('AGUARDANDO');
GO

--USUARIO
INSERT INTO usuario (idTipoUsuario, nomeUsuario, email, senha)
VALUES (1, 'ADMINISTRADOR', 'AMD@ADM.COM', 'senha123'),
		(2, 'LUCAS', 'LUCAS@LUCAS.COM', 'senha123'),
		(2, 'SAULO', 'SAULO@EMAIL.COM', 'senha123');
GO

--EVENTO
INSERT INTO evento (idTipoEvento, idInstituicao, nomeEvento, descricao, acessoLivre, DataEvento)
VALUES (1, 1, 'ORIENTA��O A OBJETOS', 'Conceitos sobre os pilares da programa��o orientada a objetos', 1, '18/08/2021 11:00'),
	   (2, 1, '	CICLO DE VIDA', 'Como utilizar os ciclos de vida com a bibliotecas ReactJs', 1, '19/08/2021 12:00');
GO

--PRESENCA
INSERT INTO presenca(idUsuario, idEvento, idSituacao)
VALUES (2, 2, 3), (3, 1, 1);
GO
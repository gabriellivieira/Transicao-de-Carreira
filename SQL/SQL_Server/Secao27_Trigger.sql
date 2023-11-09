/* TRIGGER */

USE EMPRESA
GO

CREATE TABLE PRODUTOS(
	IDPRODUTO INT PRIMARY KEY IDENTITY,
	NOME VARCHAR(50) NOT NULL,
	CATEGORIA VARCHAR(30) NOT NULL,
	PRECO NUMERIC(10,2) NOT NULL
)
GO

CREATE TABLE HISTORICO(
	IDOPERACAO INT PRIMARY KEY IDENTITY,
	PRODUTO VARCHAR(50) NOT NULL,
	CATEGORIA VARCHAR(30) NOT NULL,
	PRECOANTIGO NUMERIC(10,2) NOT NULL,
	PRECONOVO NUMERIC(10,2) NOT NULL,
	DATA DATETIME,
	USUARIO VARCHAR(30),
	MENSAGEM VARCHAR(100)
)
GO

INSERT INTO PRODUTOS VALUES('LIVRO SQL SERVER', 'LIVROS', 98.00)
INSERT INTO PRODUTOS VALUES('LIVRO ORACLE', 'LIVROS', 50.00)
INSERT INTO PRODUTOS VALUES('LICENCA POWERCENTER', 'SOFTWARES', 45000.00)
INSERT INTO PRODUTOS VALUES('LIVRO ORACLE', 'LIVROS', 60.00)
INSERT INTO PRODUTOS VALUES('NOTEBOOK 17', 'COMPUTADORES', 4500.00)
INSERT INTO PRODUTOS VALUES('LIVRO BUSINESS INTELLIGENT', 'LIVROS', 90.00)
GO

SELECT * FROM PRODUTOS
SELECT * FROM HISTORICO
GO

/* VERIFICAR O USU�RIO DO BANCO */

SELECT SUSER_NAME()
GO

/* TRIGGER DE DAODS - DML (DATA MANIPULATION LANGUAGE) */
/* TRIGGER PARA TODA A TABELA*/

-- A trigger da forma que foi feita foi ser ativada sempre que tiver um update, porem vai armazenar 
-- da informa��o antiga somente o preco
CREATE TRIGGER TRG_ATUALIZA_PRECO
ON DBO.PRODUTOS
FOR UPDATE
AS
	DECLARE @IDPRODUTO INT
	DECLARE @PRODUTO VARCHAR(30)
	DECLARE @CATEGORIA VARCHAR(10)
	DECLARE @PRECO NUMERIC(10,2)
	DECLARE @PRECONOVO NUMERIC(10,2)
	DECLARE @DATA DATETIME
	DECLARE @USUARIO VARCHAR(30)
	DECLARE @ACAO VARCHAR(100)

	--PRIMEIRO BLOCO 
	SELECT @IDPRODUTO = IDPRODUTO FROM inserted
	SELECT @PRODUTO = NOME FROM inserted
	SELECT @CATEGORIA = CATEGORIA FROM inserted
	SELECT @PRECO = PRECO FROM deleted
	SELECT @PRECONOVO = PRECO FROM inserted

	-- SEGUNDO BLOCO
	SET @DATA = GETDATE()
	SET @USUARIO = SUSER_NAME()
	SET @ACAO = 'VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRECO'

	INSERT INTO HISTORICO
	(PRODUTO, CATEGORIA, PRECOANTIGO, PRECONOVO, DATA, USUARIO, MENSAGEM)
	VALUES 
	(@PRODUTO, @CATEGORIA, @PRECO, @PRECONOVO, @DATA, @USUARIO, @ACAO)

	PRINT ('TRIGGER EXECUTADA COM SUCESSO')
GO

/* ATUALIZANDO PRE�O - TESTE DE TRIGGER 
	EXECUTANDO UPDATE
*/

UPDATE PRODUTOS SET PRECO = 100.00
WHERE IDPRODUTO = 1
GO

SELECT * FROM PRODUTOS
SELECT * FROM HISTORICO
GO

/*PROGRAMANDO TRIGGER PARA UM COLUNA*/

DROP TRIGGER TRG_ATUALIZA_PRECO
GO

-- Trigguer que ser� ativa somente quando ocorrer altera��o no preco
CREATE TRIGGER TRG_ATUALIZA_PRECO
ON DBO.PRODUTOS
FOR UPDATE AS
IF UPDATE (PRECO)
BEGIN

	DECLARE @IDPRODUTO INT
	DECLARE @PRODUTO VARCHAR(30)
	DECLARE @CATEGORIA VARCHAR(10)
	DECLARE @PRECO NUMERIC(10,2)
	DECLARE @PRECONOVO NUMERIC(10,2)
	DECLARE @DATA DATETIME
	DECLARE @USUARIO VARCHAR(30)
	DECLARE @ACAO VARCHAR(100)

	--PRIMEIRO BLOCO 
	SELECT @IDPRODUTO = IDPRODUTO FROM inserted
	SELECT @PRODUTO = NOME FROM inserted
	SELECT @CATEGORIA = CATEGORIA FROM inserted
	SELECT @PRECO = PRECO FROM deleted
	SELECT @PRECONOVO = PRECO FROM inserted

	-- SEGUNDO BLOCO
	SET @DATA = GETDATE()
	SET @USUARIO = SUSER_NAME()
	SET @ACAO = 'VALOR INSERIDO PELA TRIGGER TRG_ATUALIZA_PRECO'

	INSERT INTO HISTORICO
	(PRODUTO, CATEGORIA, PRECOANTIGO, PRECONOVO, DATA, USUARIO, MENSAGEM)
	VALUES 
	(@PRODUTO, @CATEGORIA, @PRECO, @PRECONOVO, @DATA, @USUARIO, @ACAO)

	PRINT 'TRIGGER EXECUTADA COM SUCESSO'
END
GO

UPDATE PRODUTOS SET PRECO = 60.00
WHERE IDPRODUTO = 2
GO

UPDATE PRODUTOS SET NOME = 'LIVRO SQL SERVER 02'
WHERE IDPRODUTO = 1
GO


SELECT * FROM PRODUTOS
SELECT * FROM HISTORICO
GO

/* SIMPLIFICANDO A CRIA��O DE TRIGGER */
-- Trigger update

CREATE TABLE EMPREGADO(
	IDEMP INT PRIMARY KEY,
	NOME VARCHAR(30),
	SALARIO MONEY,
	IDGERENTE INT
)
GO

ALTER TABLE EMPREGADO ADD CONSTRAINT FK_GERENTE
FOREIGN KEY (IDGERENTE)  REFERENCES EMPREGADO(IDEMP)
 
INSERT INTO EMPREGADO VALUES(1,'CLARA',5000.00, NULL)
INSERT INTO EMPREGADO VALUES(2,'CELIA',4000.00, NULL)
INSERT INTO EMPREGADO VALUES(3,'JOAO',4000.00, NULL)
GO

CREATE TABLE HIST_SALARIO(
	IDEMPREGADO INT, 
	ANTIGOSAL MONEY,
	NOVOSAL MONEY,
	DATA DATETIME
)
GO

SELECT * FROM EMPREGADO
GO

-- TRIGGER
-- USANDO O SELECT PARA DEIXAR MENOR

CREATE TRIGGER TH_SALARIO
ON DBO.EMPREGADO
FOR UPDATE AS
IF UPDATE(SALARIO)
BEGIN
	INSERT INTO HIST_SALARIO
	(IDEMPREGADO, ANTIGOSAL,NOVOSAL,DATA)
	SELECT D.IDEMP, D.SALARIO, I.SALARIO, GETDATE()
	FROM deleted D, inserted I
	WHERE D.IDEMP = I.IDEMP

	SELECT @ATUALSAL = I.SALRIO
	FROM inserted I

	IF (@ATUALSAL < @MINSAL)
	BEGIN
		RAISERROR('SALARIO MENOR QUE O PISO', 16,1)
		ROLLBACK TRANSATION
	END 

	IF (@ATUALSAL > @MAXSAL)
	BEGIN
		RAISERROR('SALARIO MAIOR QUE O TETO', 16,1)
		ROLLBACK TRANSATION
	END
		
END
GO

/* VERIFICANDO O TEXTO DE UMA TRIGGER */

SP_HELPTEXT TH_RANGE
GO
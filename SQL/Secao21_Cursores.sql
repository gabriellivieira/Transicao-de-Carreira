/* CURSORES */

CREATE DATABASE CURSORES;

USE CURSORES;

CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(50),
    JAN INT,
    FEV INT,
    MAR INT
);

INSERT INTO VENDEDORES VALUES(NULL,'MAFRA',32432,242334,574545);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA',65465,65443,653454);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO',12432,65356,8756);
INSERT INTO VENDEDORES VALUES(NULL,'LILIAN',4567,9676,8765);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO',3467,68756,99765);
INSERT INTO VENDEDORES VALUES(NULL,'GLORIA',54786,76889,7098);

SELECT * FROM VENDEDORES;

-- Funções aritmeticas em linhas
-- Em casos onde o banco é muito grande com uma grnade quantidade de dados, operações 
-- como essa poderão demandar de muito processamento por serem feitas em tempo de execução
SELECT NOME, (JAN+FEV+MAR) AS TOTAL
FROM VENDEDORES;

SELECT NOME, (JAN+FEV+MAR)/3 AS MEDIA
FROM VENDEDORES;

-- Uma das opções para resolver o problema da demanda muito alta de processamento 
-- para realizar as operações é criar outra tabela já com as operações
CREATE TABLE VEND_TOTAL(
	NOME VARCHAR(50),
	JAN INT,
	FEV INT,
	MAR INT,
	TOTAL INT,
	MEDIA INT
);

-- O cursor será usado nessa tabela para inserir os valores Total e Media como deve ser
-- O cursor é uma programação dentro de uma procedure
DELIMITER #

CREATE PROCEDURE INSEREDADOS ()
BEGIN
	DECLARE FIM INT DEFAULT 0;
    DECLARE VAR1, VAR2, VAR3, VTOTAL, VMEDIA INT;
    DECLARE VNOME VARCHAR(50);
    
    DECLARE REG CURSOR FOR (
		SELECT NOME, JAN, FEV, MAR FROM VENDEDORES
	);
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = 1;
    -- Variavel de manupulação, ela verifica se o vetor tem ou não elementos para continuar o loop.
    
    OPEN REG;
    -- Pega o resultado da query que esta na variavel REG e vai jogar na RAM
    -- Assim será possível manipular os dados por estar na RAM.
    
    REPEAT 
    
		-- Me traga o proximo..
		FETCH REG INTO VNOME, VAR1, VAR2, VAR3;
        IF NOT FIM THEN 
			
            -- Atribui valores
			SET VTOTAL = VAR1 + VAR2 + VAR3
            SET VMEDIA = VTOTAL / 3;
            
            INSERT INTO VEND_TOTAL VALUES (VNOME, VAR1, VAR2, VAR3, VTOTAL, VMEDIA);
		END IF;
        
	UNTIL FIM END REPEAT;
    
    CLOSE REG;
    
END
#

DELIMITER ;

-- Chamar a proceduro com o cursos
CALL INSEREDADOS ();

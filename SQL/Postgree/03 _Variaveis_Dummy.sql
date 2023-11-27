/* Variaveis Dummy para Machine Learning */

/* Utilizando o Case */

SELECT NOME, CARGO FROM FUNCIONARIOS;

SELECT NOME, CARGO,
CASE
		WHEN CARGO = 'Software Engineer' THEN 'CONDICAO 01'
		WHEN CARGO = 'Executive Secretary' THEN 'CONDICAO 02'
		WHEN CARGO = 'Sales Associate' THEN 'CONDICAO 03'
		WHEN CARGO = 'Web Developer' THEN 'CONDICAO 04'
		ELSE 'OUTRA CONDICAO'

END AS "CONDICOES"
FROM FUNCIONARIOS;

SELECT SEXO,
CASE
		WHEN SEXO = 'Masculino' THEN 'M'
		ELSE 'F'
END AS "SEXO"
FROM FUNCIONARIOS;


/* Utilizando valores booleanos*/

-- Primeira etapa para um Dummy
SELECT NOME, CARGO, (SEXO = 'Masculino') AS Masculino, (SEXO = 'Feminino') AS Feminino
FROM FUNCIONARIOS;

SELECT SEXO, CARGO,
CASE
		WHEN (SEXO = 'Masculino') = true THEN 1
		ELSE 0
END AS "MASCULINO",
CASE
		WHEN (SEXO = 'Feminino') = true THEN 0
		ELSE 1
END AS "FEMININO"
FROM FUNCIONARIOS;

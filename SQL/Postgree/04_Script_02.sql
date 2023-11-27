/* FILTROS DE GRUPO */

/* Filtros baseados em valores numericos */

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE SALARIO > 100000;

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE SALARIO < 100000;

/* Filtros baseados em valores string*/
-- Os filtros são sensitivos a forma que é escrita 

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'Ferramentas';

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'FERRAMENTAS';

/* Filtros baseados em multiplos tipo e colunas - Considerar OR e  AND */

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'Ferramentas'
AND 
SALARIO > '100000'; 
;

/* Filtros baseados em multiplos tipo e colunas - TENCAO PARA A REGRA DO AND, OR
em relacionamento OR, AND em relacionamento 1 x 1
O filtro and tratando de uma unica coluna sempre dará falso) */

SELECT NOME, DEPARTAMENTO, SALARIO
FROM FUNCIONARIOS
WHERE DEPARTAMENTO = 'Ferramentas'
AND 
DEPARTAMENTO = 'Books'; 
;

/* F iltos baseado em padrão de caracteres */

SELECT DEPARTAMENTO, SUM(SALARIO) AS "TOTAL"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'B%'
GROUP BY DEPARTAMENTO; 

/* F iltos baseado em padrão de caracteres com mais letras */

SELECT DEPARTAMENTO, SUM(SALARIO) AS "TOTAL"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'Be%'
GROUP BY DEPARTAMENTO; 

/* F iltos baseado em padrão de caracteres no meio da palavra */

SELECT DEPARTAMENTO, SUM(SALARIO) AS "TOTAL"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'B%s'
GROUP BY DEPARTAMENTO; 

/* Filtrar o agrupamento pelo salario - Exemplo, maior que 40.000.000*/

-- Query com erro - Ocorre quando o Where usamos em colunas que não são agregadas
SELECT DEPARTAMENTO, SUM(SALARIO) AS "TOTAL"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'B%' AND SUM(SALARIO) > 40000000
GROUP BY DEPARTAMENTO; 

-- Query correta - Usamos o HAVING pois a coluna salario esta agregada
-- HAVING sempre depois do GROUP BY

SELECT DEPARTAMENTO, SUM(SALARIO) AS "TOTAL"
FROM FUNCIONARIOS
WHERE DEPARTAMENTO LIKE 'B%'
GROUP BY DEPARTAMENTO
HAVING SUM(SALARIO) > 400000; 

/* MULTIPLOS CONTADORES */

SELECT COUNT(*) AS "QUANTIDADE TOTAL",
COUNT(*) FILTER( WHERE SEXO = 'Masculino') AS "MASCULINO",
COUNT(*) FILTER( WHERE DEPARTAMENTO = 'Books') AS "BOOKS"
FROM FUNCIONARIOS;

SELECT COUNT(*) AS "QUANTIDADE TOTAL",
COUNT(*) FILTER( WHERE SEXO = 'Masculino') AS "MASCULINO",
COUNT(*) FILTER( WHERE DEPARTAMENTO = 'Books') AS "BOOKS",
COUNT(*) FILTER( WHERE SALARIO > 140000) AS "SALARIO > 148K"
FROM FUNCIONARIOS;

/* FORMATANDO STRINGS */

-- Listando

SELECT DEPARTAMENTO FROM FUNCIONARIOS;

-- Usando distinct para que a informação não repita

SELECT DISTINCT DEPARTAMENTO FROM FUNCIONARIOS;

-- Upper Case para trazer as informações em maiusculo

SELECT DISTINCT UPPER (DEPARTAMENTO) FROM FUNCIONARIOS;

-- Lower Case para trazer as informações em minusculo

SELECT DISTINCT LOWER (DEPARTAMENTO) FROM FUNCIONARIOS;

-- Concatenando string

SELECT CARGO || ' - ' || DEPARTAMENTO
FROM FUNCIONARIOS;

SELECT UPPER(CARGO || ' - ' || DEPARTAMENTO) AS "Cargo Completo"
FROM FUNCIONARIOS;

SELECT LOWER(CARGO || ' - ' || DEPARTAMENTO) AS "Cargo Completo"
FROM FUNCIONARIOS;

/* REMOVER ESPACOS */

-- Select com espaços
SELECT '      UNIDADOS      ';

-- Contando caracteres com LENGTH

SELECT LENGTH('      UNIDADOS      ');

-- Aplicando o TRIM para tirar os espacos

SELECT TRIM('      UNIDADOS      ');

SELECT LENGTH (TRIM('      UNIDADOS      '));

/* ATIVIDADES - Criar uma coluna ao lado da coluna cargo e dizer se essa pessoa é assistente ou não */

SELECT NOME, (CARGO LIKE '%assistent%') AS "ASSISTENTE"
FROM FUNCIONARIOS;

-- Ou

SELECT NOME, 
CASE
	WHEN (CARGO LIKE '%assistent%') = TRUE THEN 1
	ELSE 0
END AS "ASSISTENTE"
FROM FUNCIONARIOS;

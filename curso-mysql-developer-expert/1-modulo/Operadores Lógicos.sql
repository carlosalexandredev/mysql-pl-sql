-- Operador WHERE
SELECT * 
FROM senso
WHERE nome_mun = 'Jundiai'
AND ano = 2014;

-- Operador AND 
SELECT * 
FROM senso
WHERE cod_uf  = '35'
AND populacao > 50000
AND ano = 2014;

-- Operador BETWEEN
SELECT * 
FROM senso 
WHERE cod_uf ='35' 
AND populacao 
BETWEEN 5000 AND 10000 
AND ano='2014'
ORDER BY populacao DESC; 

-- Operador IN
SELECT *
FROM senso
WHERE cod_uf IN ('35', '12')
AND ano = '2014';

-- Operador IN
SELECT *
FROM senso
WHERE cod_uf NOT IN ('35', '12')
AND ano = '2014';

-- Operador LIKE
SELECT * 
FROM senso 
WHERE nome_mun LIKE ('%or%')
AND ano = '2014';

SELECT * 
FROM senso 
WHERE nome_mun LIKE ('_uzi%')
AND ano = '2014';

SELECT * 
FROM senso 
WHERE nome_mun LIKE ('S%o_Paul_')
AND ano = '2014';

-- Operador NOT
SELECT * 
FROM senso 
WHERE nome_mun NOT LIKE ('A%')
AND NOT ano = '2014';

-- Operador OR
SELECT * 
FROM senso 
WHERE nome_mun NOT LIKE ('A%')
AND (cod_uf = '35' OR cod_uf = '15')
AND ano = '2014';

-- Operador IS NOT NULL
SELECT * 
FROM senso 
WHERE (regiao IS NOT NULL OR regiao != '')
AND (cod_uf = '35' OR cod_uf = '15')
AND ano = '2014';

-- Operador IS NULL
SELECT * 
FROM senso 
WHERE (regiao IS NULL OR regiao = '')
AND (cod_uf = '35' OR cod_uf = '15')
AND ano = '2014';

-- Preparando Cenário para IS NULL
SELECT * 
FROM senso 
WHERE regiao = '';

UPDATE senso 
SET regiao = NULL 
WHERE regiao = '';

SELECT * 
FROM senso 
WHERE regiao IS NULL; 

-- Operador HAVING
SELECT cod_uf, estado, COUNT(*) AS quantidade  
FROM senso
WHERE ano = '2014'
GROUP BY cod_uf, estado HAVING COUNT(cod_mun)>500;

-- Operador HAVING
SELECT cod_uf, estado, COUNT(*) AS quantidade  
FROM senso
WHERE ano = '2014'
GROUP BY cod_uf, estado HAVING COUNT(cod_mun)<500;




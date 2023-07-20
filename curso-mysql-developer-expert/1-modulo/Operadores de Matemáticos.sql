-- Operador +
SELECT 1+3 AS retorno;

-- Operador *
SELECT 2*3 AS retorno;

-- Operador -
SELECT 3-1 AS retorno;

-- Operador /
SELECT 4/2 AS retorno;

-- Operador %
SELECT 5%2 AS retorno;

-- Combinando operadores
SELECT (:peso/(:altura * 2)) AS imc;

-- Combinando operadores com case
SELECT 
    (:peso / (:altura * 2)) AS imc,
    CASE
        WHEN (:peso / (:altura * 2)) < 18.5 THEN 'Abaixo do Peso'
        WHEN (:peso / (:altura * 2)) >= 18.5 AND (:peso / (:altura * 2)) < 24.9 THEN 'Peso Normal'
        WHEN (:peso / (:altura * 2)) >= 25	 AND (:peso / (:altura * 2)) < 29.9 THEN 'Sobrepeso'
        WHEN (:peso / (:altura * 2)) >= 30 	 AND (:peso / (:altura * 2)) < 34.9 THEN 'Obesidade Grau 1'
        WHEN (:peso / (:altura * 2)) >= 35 	 AND (:peso / (:altura * 2)) < 39.9 THEN 'Obesidade Grau 2'
        ELSE 'Obesidade Grau 3'
    END AS situacao;
   
 -- Script projetendo acrescimo de 10% populacao
SELECT nome_mun, populacao,
       (populacao*0.10)   AS descrescimo,
       (populacao * 1.10) AS proj_populacao
FROM senso
WHERE ano = 2014;

	



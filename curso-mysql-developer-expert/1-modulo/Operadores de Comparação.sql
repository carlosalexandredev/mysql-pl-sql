SELECT * FROM senso;

-- Operador =

SELECT * FROM senso
WHERE cod_uf = '35' AND ano = '2014';

SELECT * FROM senso
WHERE cod_uf = '35' AND ano = '2014' AND nome_mun = 'Dourado';

-- Operador > (maior)

SELECT * FROM senso
WHERE populacao > 100000
AND ano = '2014';

-- Operador >= (maior-igual)

SELECT * FROM senso
WHERE populacao >= 100000
AND ano = '2014';

-- Operador < (menor)

SELECT * FROM senso
WHERE populacao < 100000
AND ano = '2014';

-- Operador <= (menor-igual)

SELECT * FROM senso
WHERE populacao <= 100000
AND ano = '2014';

-- Operador <> (diferente)

SELECT * FROM senso
WHERE cod_uf  <> '35' AND cod_uf <> '14'
AND ano = '2014';


-- Combinando operadores

SELECT * FROM senso 
WHERE populacao <= 100000 
	AND populacao >= 50000 
	AND cod_uf = '35' 
	AND nome_mun <> 'Vinhedo' 
	AND ano = '2014';





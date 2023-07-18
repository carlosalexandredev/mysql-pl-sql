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

-- Operador < (menor)

SELECT * FROM senso
WHERE populacao < 100000
AND ano = '2014';

-- Operador <> (menor)

SELECT * FROM senso
WHERE cod_uf  <> '35' and cod_uf <> '14'
AND ano = '2014';



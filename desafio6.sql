CREATE VIEW faturamento_atual AS 
SELECT ROUND(MIN(a.valor), 2) AS "faturamento_minimo", 
ROUND(MAX(a.valor), 2) AS "faturamento_maximo" , 
ROUND(AVG(a.valor), 2) AS "faturamento_medio",
ROUND(SUM(a.valor), 2) AS "faturamento_total" FROM planos AS a
INNER JOIN usuarios AS b
ON a.planoId = b.planoId;

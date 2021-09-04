-- https://pt.stackoverflow.com/questions/38455/retorno-de-casas-decimais-em-consultas-do-sqlserver
CREATE VIEW faturamento_atual AS
SELECT CAST(MIN(cost) AS DECIMAL(10, 2)) AS faturamento_minimo,
CAST(MAX(p.cost) AS DECIMAL(10, 2)) AS faturamento_maximo,
CAST(AVG(p.cost) AS DECIMAL(10, 2)) AS faturamento_medio,
CAST(SUM(p.cost) AS DECIMAL(10, 2)) AS faturamento_total
FROM SpotifyClone.plan AS p
INNER JOIN SpotifyClone.user AS u
ON p.plan_id = u.plan_id;

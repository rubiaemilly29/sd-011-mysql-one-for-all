CREATE VIEW faturamento_atual AS
SELECT MIN(P.valor_plano) AS faturamento_minimo,
MAX(P.valor_plano) AS faturamento_maximo,
ROUND(AVG(P.valor_plano), 2) AS faturamento_medio,
ROUND(SUM(P.valor_plano), 2) AS faturamento_total
FROM Planos AS P
INNER JOIN Usuarios AS U
ON P.plano_id = U.plano_id;

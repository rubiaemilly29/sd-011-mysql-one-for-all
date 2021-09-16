CREATE VIEW faturamento_atual AS 
SELECT 
ROUND(MIN(B.valor_plano), 2) AS faturamento_minimo,
ROUND(MAX(B.valor_plano), 2) AS faturamento_maximo,
ROUND(AVG(B.valor_plano), 2) AS faturamento_medio,
ROUND(SUM(B.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.Usuarios A
INNER JOIN SpotifyClone.Planos B ON B.plano_id = A.plano_id;

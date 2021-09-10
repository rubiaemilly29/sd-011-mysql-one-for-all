create view faturamento_atual as
SELECT
MIN(planos.valor_plano) AS faturamento_minimo,
MAX(planos.valor_plano) AS faturamento_maximo,
cast(ROUND(AVG(planos.valor_plano), 2) as decimal(5,2)) AS faturamento_medio,
SUM(planos.valor_plano) AS faturamento_total
FROM planos
INNER JOIN usuario
ON planos.plano_id = usuario.plano_id;

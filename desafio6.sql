create view faturamento_atual as
SELECT
ROUND(MIN(planos.valor_plano), 2) AS 'faturamento_minimo',
ROUND(MAX(planos.valor_plano), 2) AS 'faturamento_maximo',
cast(ROUND(AVG(planos.valor_plano), 2) as decimal(5,2)) AS 'faturamento_medio',
ROUND(SUM(planos.valor_plano), 2) AS 'faturamento_total'
FROM planos
INNER JOIN usuario
ON planos.plano_id = usuario.plano_id;

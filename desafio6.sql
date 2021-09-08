CREATE VIEW faturamento_atual AS
SELECT
CAST(MIN(p.valor) AS DECIMAL(10, 2)) AS 'faturamento_minimo',
MAX(p.valor) AS 'faturamento_maximo',
CAST(ROUND(AVG(p.valor), 2) AS DECIMAL(10,2)) AS 'faturamento_medio',
SUM(p.valor) AS 'faturamento_total'
FROM usuarios as u
JOIN planos as p on u.plano_id = p.id;

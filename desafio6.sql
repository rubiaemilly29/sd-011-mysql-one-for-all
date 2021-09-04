CREATE VIEW faturamento_atual AS
SELECT MIN(p.plan_value) AS 'faturamento_minimo',
MAX(p.plan_value) AS 'faturamento_maximo',
ROUND(SUM(p.plan_value) / COUNT(u.name), 2) AS 'faturamento_medio',
SUM(p.plan_value) AS 'faturamento_total'
FROM Plan p
INNER JOIN User u ON u.plan_id = p.plan_id;

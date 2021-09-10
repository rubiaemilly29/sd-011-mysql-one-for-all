CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MIN(p.price), 2) AS 'faturamento_minimo',
MAX(p.price) AS 'faturamento_maximo',
FORMAT(AVG(p.price), 2) AS 'faturamento_medio',
SUM(p.price) AS 'faturamento_total'
FROM users AS u
INNER JOIN plan AS p
ON u.plan_id = p.id;

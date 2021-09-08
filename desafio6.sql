CREATE VIEW faturamento_atual AS
SELECT
FORMAT(MIN(p.valor), 2) AS 'faturamento_minimo',
FORMAT(MAX(p.valor), 2) AS 'faturamento_maximo',
FORMAT(AVG(p.valor), 2) AS 'faturamento_medio',
FORMAT(SUM(p.valor), 2) AS 'faturamento_total'
FROM usuarios as u
JOIN planos as p on u.plano_id = p.id;

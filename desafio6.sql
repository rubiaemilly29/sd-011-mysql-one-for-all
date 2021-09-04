CREATE VIEW faturamento_atual AS
SELECT 
MIN(p.valor) `faturamento_minimo`,
MAX(p.valor) `faturamento_maximo`,
ROUND(AVG(p.valor), 2) `faturamento_medio`,
ROUND(SUM(p.valor), 2) `faturamento_total`
FROM usuarios u
INNER JOIN planos p
ON p.plano_id = u.plano_id;

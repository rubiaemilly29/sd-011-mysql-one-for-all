CREATE VIEW faturamento_atual AS
SELECT MIN(p.valor) `faturamento_minimo`,
MAX(p.valor) `faturamento_maximo`,
ROUND(AVG(p.valor), 2) `faturamento_medio`,
SUM(p.valor) `faturamento_total`
FROM planos p
INNER JOIN usuarios u
ON p.plano_id = u.plano_id;

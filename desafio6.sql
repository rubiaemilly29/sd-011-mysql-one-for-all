CREATE VIEW faturamento_atual AS
SELECT 
MIN(p.valor) `faturamento_minimo`,
MAX(p.valor) `faturamento_maximo`,
CAST(AVG(p.valor) AS DECIMAL(5, 2)) `faturamento_medio`,
SUM(p.valor) `faturamento_total`
FROM usuarios u
INNER JOIN planos p
ON p.plano_id = u.plano_id;

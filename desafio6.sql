CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(preco), 2) AS 'faturamento_minimo',
MAX(preco) AS 'faturamento_maximo',
FORMAT(ROUND(AVG(preco),2),2) AS 'faturamento_medio',
SUM(preco) AS 'faturamento_total' 
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.planos p
ON u.plano_id = p.plano_id;

-- CREATE VIEW faturamento_atual AS
-- SELECT MIN(preco) AS 'faturamento_minimo',
-- MAX(preco) AS 'faturamento_maximo',
-- ROUND(AVG(CEIL(preco)),2) AS 'faturamento_medio',
-- SUM(preco) AS 'faturamento_total' FROM (
-- SELECT preco
-- FROM SpotifyClone.usuarios u
-- INNER JOIN SpotifyClone.planos p
-- ON u.plano_id = p.plano_id) AS sub;

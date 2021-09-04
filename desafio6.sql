CREATE VIEW faturamento_atual AS
SELECT 
MIN(P.preco_plano) AS `faturamento_minimo`,
MAX(P.preco_plano) AS `faturamento_maximo`,
ROUND(AVG(P.preco_plano), 2) AS `faturamento_medio`,
SUM(P.preco_plano) AS `faturamento_total`
FROM
usuario AS U
INNER JOIN
planos AS P ON U.plano_id = P.plano_id;

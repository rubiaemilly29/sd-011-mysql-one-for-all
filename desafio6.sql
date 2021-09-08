CREATE VIEW faturamento_atual AS
SELECT FORMAT(MIN(valor_plano), 2) AS faturamento_minimo,
FORMAT(MAX(valor_plano), 2) AS faturamento_maximo,
FORMAT(AVG(CEIL(valor_plano)), 2) AS faturamento_medio,
FORMAT(SUM(valor_plano), 2) AS faturamento_total
FROM Planos AS P
INNER JOIN Usuarios AS U
  ON U.plano_id = P.plano_id;

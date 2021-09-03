CREATE VIEW `faturamento_atual` AS
SELECT
  FORMAT(MIN(P.valor), 2) AS `faturamento_minimo`,
  FORMAT(MAX(P.valor), 2) AS `faturamento_maximo`,
  FORMAT(AVG(P.valor), 2) AS `faturamento_medio`,
  FORMAT(SUM(P.valor), 2) AS `faturamento_total`
FROM
  Usuarios AS U
  INNER JOIN Planos AS P ON U.plano_id = P.plano_id;

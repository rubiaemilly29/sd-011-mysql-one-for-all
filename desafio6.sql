CREATE VIEW `faturamento_atual` AS
SELECT
  Min(P.valor) AS `faturamento_minimo`,
  Max(P.valor) AS `faturamento_maximo`,
  round(AVG(P.valor), 2) AS `faturamento_medio`,
  SUM(P.valor) AS `faturamento_total`
FROM
  Usuarios AS U
  INNER JOIN Planos AS P ON U.plano_id = P.plano_id;

CREATE VIEW faturamento_atual AS
  SELECT
    ROUND(MIN(plans.valor_plano), 2) AS `faturamento_minimo`,
    ROUND(MAX(plans.valor_plano), 2) AS `faturamento_maximo`,
    ROUND(AVG(plans.valor_plano), 2) AS `faturamento_medio`,
    ROUND(SUM(plans.valor_plano), 2) AS `faturamento_total`
  FROM SpotifyClone.planos AS plans
  INNER JOIN
    SpotifyClone.usuarios AS users ON plans.plano_id = users.plano_id;

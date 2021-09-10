CREATE VIEW faturamento_atual AS
SELECT
MIN(p.valor_plano) AS 'faturamento_minimo',
    MAX(p.valor_plano) AS 'faturamento_maximo',
    ROUND(AVG(p.valor_plano), 2) AS 'faturamento_medio',
    ROUND(SUM(p.valor_plano), 2) AS 'faturamento_total'
FROM SpotifyClone.users AS u
  INNER JOIN SpotifyClone.plan AS p ON u.plan_id = p.plan_id;

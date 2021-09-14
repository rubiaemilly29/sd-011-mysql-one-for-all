CREATE VIEW SpotifyClone.faturamento_atual AS
  SELECT ROUND(MIN(s.plan_value), 2) AS faturamento_minimo, ROUND(MAX(s.plan_value), 2) AS faturamento_maximo, ROUND(AVG(s.plan_value), 2) AS faturamento_medio, ROUND(SUM(s.plan_value), 2) AS faturamento_total FROM SpotifyClone.users AS u INNER JOIN SpotifyClone.plans AS s ON s.plan_id = u.plan_id;

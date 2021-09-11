CREATE VIEW faturamento_atual AS
SELECT round(min(su.price), 2) AS faturamento_minimo,
  round(max(su.price), 2) AS faturamento_maximo,
  round(avg(su.price), 2) AS faturamento_medio,
  round(sum(su.price), 2) AS faturamento_total
FROM SpotifyClone.subscriptions AS su
  INNER JOIN SpotifyClone.users AS usr ON su.subscription_id = usr.subscription_id;
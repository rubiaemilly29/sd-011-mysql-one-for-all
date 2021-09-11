CREATE VIEW faturamento_atual AS
SELECT min(su.price) AS faturamento_minimo,
  max(su.price) AS faturamento_maximo,
  ROUND(avg(su.price), 2) AS faturamento_medio,
  sum(su.price) AS faturamento_total
FROM SpotifyClone.subscriptions AS su
  INNER JOIN SpotifyClone.users AS usr ON su.subscription_id = usr.subscription_id;

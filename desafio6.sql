CREATE VIEW faturamento_atual AS
SELECT round(min(pl.valor), 2) AS faturamento_minimo,
  round(max(pl.valor), 2) AS faturamento_maximo,
  round(avg(pl.valor), 2) AS faturamento_medio,
  round(sum(pl.valor), 2) AS faturamento_total
FROM SpotifyClone.planos AS pl
  INNER JOIN SpotifyClone.usuarios AS usr ON pl.id_planos =  usr.id_planos;

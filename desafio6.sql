CREATE VIEW faturamento_atual AS
SELECT format(min(p.valor_plano), 2) AS faturamento_minimo,
format(max(p.valor_plano), 2) AS faturamento_maximo,
format(AVG(p.valor_plano), 2) AS faturamento_medio,
format(SUM(p.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.Planos AS p ON p.plano_id = u.plano_id;

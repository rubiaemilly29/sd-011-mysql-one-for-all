CREATE VIEW faturamento_atual AS
SELECT
(SELECT preco FROM SpotifyClone.planos WHERE plano = 'gratuito') AS faturamento_minimo,
(SELECT preco FROM SpotifyClone.planos WHERE plano = 'familiar') AS faturamento_maximo,
(SELECT ROUND(AVG(preco), 2) FROM SpotifyClone.planos) faturamento_medio,
(SELECT SUM(preco) FROM SpotifyClone.planos) faturamento_total;

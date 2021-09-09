CREATE VIEW cancoes_premium AS
SELECT
c.cancao_nome AS nome,
COUNT(his.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducoes AS his
ON his.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.users AS u
ON u.usuario_id = his.usuario_id
WHERE u.plano_id IN (2, 3)
GROUP BY his.cancao_id
ORDER BY nome;

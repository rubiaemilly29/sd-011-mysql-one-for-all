CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id AND u.plano_id <> 1
GROUP BY nome
ORDER BY nome ASC;

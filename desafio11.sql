CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
WHERE u.plano_id IN (2,3)
GROUP BY nome
ORDER BY nome;

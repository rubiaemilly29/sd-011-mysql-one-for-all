CREATE VIEW cancoes_premium AS
SELECT c.cancao as nome, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.planos AS p
ON u.plano_id = p.plano_id
WHERE p.plano IN('familiar', 'universitário')
GROUP BY c.cancao
ORDER BY c.cancao ASC;

CREATE VIEW cancoes_premium AS
SELECT m.nome_musica AS nome,
COUNT(m.nome_musica) AS reproducoes
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musicas AS m
ON h.musica_id = m.musica_id
INNER JOIN SpotifyClone.planos AS p
ON p.plano_id = u.plano_id
WHERE p.plano != 'gratuito'
GROUP BY m.nome_musica
ORDER BY 1 ASC;

CREATE VIEW cancoes_premium AS
SELECT m.musica_nome AS nome,
COUNT(*) AS reproducoes
FROM Spotifyclone.musicas AS m
INNER JOIN SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p
ON h.musica_id = m.musica_id
AND u.usuario_id = h.usuario_id
AND u.plano_id = p.plano_id
WHERE p.plano_id IN ('2', '3')
GROUP BY nome
ORDER BY nome;

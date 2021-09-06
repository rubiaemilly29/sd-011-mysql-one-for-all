CREATE VIEW top_3_artistas AS 
SELECT artista AS 'artista',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.seguindoartistas s_a
INNER JOIN SpotifyClone.artistas a
ON s_a.artista_id = a.artista_id
INNER JOIN SpotifyClone.usuarios u
ON s_a.usuario_id = u.usuario_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

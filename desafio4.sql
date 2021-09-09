CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista , COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.seguindo_artistas s
ON s.artista_id = a.artista_id
GROUP BY a.artista
ORDER BY seguidores DESC, artista
LIMIT 3;

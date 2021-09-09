CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista, COUNT(ua.usuario_id) AS seguidores
FROM SpotifyClone.usuario_artista AS ua
INNER JOIN SpotifyClone.artista AS a
ON a.artista_id = ua.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

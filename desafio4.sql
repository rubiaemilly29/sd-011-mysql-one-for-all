CREATE VIEW top_3_artistas AS
SELECT a.artista, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON a.artista_id = s.artista_id
GROUP BY a.artista
ORDER BY seguidores DESC, a.artista
LIMIT 3;

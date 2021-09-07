CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON a.artista_id = s.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;

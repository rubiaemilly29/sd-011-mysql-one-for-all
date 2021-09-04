CREATE VIEW top_3_artistas AS
SELECT a.artista AS artista, COUNT(*) AS seguidores
FROM SpotifyClone.Seguidores As s
INNER JOIN SpotifyClone.Artistas AS a ON s.artista_id = a.artista_id
GROUP BY s.artista_id
ORDER BY seguidores DESC, artista ASC
LIMIT 3;

CREATE VIEW top_3_artistas AS
SELECT t1.artista AS 'artista',
COUNT(t2.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas AS t1
INNER JOIN SpotifyClone.seguindo_artistas AS t2
ON t1.artista_id = t2.artista_id
GROUP BY t1.artista
ORDER BY `seguidores` DESC, t1.artista ASC 
LIMIT 3;

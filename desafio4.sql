CREATE VIEW top_3_artistas AS 
SELECT 
sa.artista,
COUNT(ss.artista_id) AS seguidores
FROM SpotifyClone.artista AS sa
INNER JOIN SpotifyClone.seguidores AS ss
ON sa.artista_id = ss.artista_id
GROUP BY ss.artista_id
ORDER BY COUNT(ss.artista_id) DESC, sa.artista
LIMIT 3;

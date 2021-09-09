CREATE VIEW top_3_artistas AS
SELECT 
a.artista_nome AS 'artista',
COUNT(a.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN
SpotifyClone.seguindo_artistas AS s ON s.artista_id = a.artista_id
GROUP BY s.artista_id
ORDER BY COUNT(artista_id) DESC, artista
LIMIT 3;

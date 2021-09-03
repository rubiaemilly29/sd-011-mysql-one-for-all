CREATE VIEW top_3_artistas AS
SELECT a.artista_name AS 'artista', COUNT(s.artista_id) AS 'seguidores' FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.seguindo s
ON s.artista_id = a.artista_id
GROUP BY a.artista_name
ORDER BY COUNT(s.artista_id) DESC, a.artista_name
LIMIT 3;

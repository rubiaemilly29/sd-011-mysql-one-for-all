CREATE VIEW top_3_artistas AS
SELECT
ar.artist_name AS 'artista',
COUNT(f.artist_id) AS 'seguidores'
FROM SpotifyClone.artists ar
INNER JOIN SpotifyClone.following f
ON ar.artist_id = f.artist_id
GROUP BY ar.artist_name
ORDER BY 2 DESC, 1
LIMIT 3;

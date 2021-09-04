CREATE VIEW top_3_artistas AS
SELECT a.artist_name AS artista,
COUNT(*) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.artists_following AS af
ON a.artist_id = af.artist_id
GROUP BY artista 
ORDER BY seguidores DESC, artista
LIMIT 3;

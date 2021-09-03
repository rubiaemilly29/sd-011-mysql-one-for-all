CREATE VIEW top_3_artistas AS
SELECT artists.name AS artista, COUNT(ua.artist_id) AS seguidores
FROM SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.users_artists AS ua
ON ua.artist_id = artists.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

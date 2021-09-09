CREATE VIEW top_3_artistas AS
SELECT A.name AS artista, COUNT(FA.artist_id) AS seguidores
FROM SpotifyClone.artists AS A
INNER JOIN SpotifyClone.users_follow_artists AS FA
ON FA.artist_id = artists.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

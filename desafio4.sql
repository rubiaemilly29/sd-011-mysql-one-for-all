CREATE VIEW top_3_artistas AS
SELECT A.artist artista,
COUNT(U.user_id) seguidores
FROM SpotifyClone.user_following U
INNER JOIN SpotifyClone.artists A
ON U.artist_id = A.artist_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

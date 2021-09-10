CREATE VIEW top_3_artistas AS
SELECT Concat(a.firstName, " ", a.lastName) AS artista, Count(*) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.followedArtists AS fa
ON a.artistId = fa.artistId
GROUP BY artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;

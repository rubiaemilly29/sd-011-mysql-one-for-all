CREATE VIEW perfil_artistas AS
SELECT Concat(a.firstName, " ", a.lastName) AS artista, al.title AS album, Count(*) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
ON a.artistId = al.artistId
INNER JOIN SpotifyClone.followedArtists AS fa
ON a.artistId = fa.artistId
GROUP BY album, artista
ORDER BY seguidores DESC, artista ASC, album ASC;

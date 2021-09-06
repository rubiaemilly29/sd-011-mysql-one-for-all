CREATE VIEW perfil_artistas AS (
SELECT artists.artist AS artista,
albums.album AS album,
f.seguidores
FROM SpotifyClone.albums AS albums
INNER JOIN 
(
SELECT artist_id, COUNT(artist_id) AS seguidores
FROM SpotifyClone.follow
GROUP BY artist_id
) AS f
ON f.artist_id = albums.artist_id
INNER JOIN SpotifyClone.artists AS artists ON artists.artist_id = albums.artist_id
ORDER BY seguidores DESC, artista ASC, album ASC
);

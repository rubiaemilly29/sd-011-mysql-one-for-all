CREATE VIEW perfil_artistas AS
SELECT artist.`name` AS artista, album.`name` AS album, COUNT(ua.artist_id) AS seguidores
FROM SpotifyClone.albuns AS album
INNER JOIN SpotifyClone.artists AS artist
ON album.artist_id = artist.artist_id
INNER JOIN SpotifyClone.users_artists AS ua
ON ua.artist_id = artist.artist_id
GROUP BY album
ORDER BY seguidores DESC, artista, album;

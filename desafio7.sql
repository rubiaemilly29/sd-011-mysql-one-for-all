CREATE VIEW perfil_artistas AS SELECT
art.artist_name AS artista,
alb.album_name AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artists AS art
INNER JOIN
SpotifyClone.albums AS alb ON alb.artist_id = art.artist_id
INNER JOIN
SpotifyClone.following_artist AS foll ON foll.artist_id = art.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;

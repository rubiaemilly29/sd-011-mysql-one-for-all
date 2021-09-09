CREATE VIEW perfil_artistas AS
SELECT A.name AS artista, AL.name AS album, COUNT(*) AS seguidores
FROM SpotifyClone.albuns AS AL
INNER JOIN SpotifyClone.artists AS A
ON AL.artist_id = A.artist_id
INNER JOIN SpotifyClone.users_follow_artists AS U
ON U.artist_id = A.artist_id
GROUP BY AL.album_id
ORDER BY seguidores DESC, artista, album;

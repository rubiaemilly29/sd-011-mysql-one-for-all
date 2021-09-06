CREATE VIEW perfil_artistas AS
SELECT a.artist_name AS artista,
al.album_name AS album,
COUNT(af.user_id) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS al
ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.artists_following AS af
ON a.artist_id = af.artist_id
GROUP BY al.album_id
ORDER BY seguidores DESC, artista, album;

CREATE VIEW perfil_artistas AS
SELECT
ar.artist_name AS artista,
al.album_title AS album,
COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artists ar
INNER JOIN SpotifyClone.albums al
ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.following f
ON ar.artist_id = f.artist_id
GROUP BY ar.artist_id, al.album_id
ORDER BY 3 DESC, 1, 2;

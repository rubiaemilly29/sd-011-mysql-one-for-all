CREATE VIEW perfil_artistas AS
SELECT a.artist_name AS artista,
al.album AS album,
COUNT(fa.user_id) AS seguidores
FROM artist AS a
INNER JOIN albums AS al ON al.artist_id = a.artist_id
INNER JOIN following_artists AS fa ON fa.artist_id = al.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;

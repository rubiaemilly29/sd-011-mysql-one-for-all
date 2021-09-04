CREATE VIEW perfil_artistas AS
SELECT A.artist_name AS artista,
AB.album AS album,
COUNT(FA.user_id) AS seguidores
FROM artist AS A
INNER JOIN albums AS AB ON AB.artist_id = A.artist_id
INNER JOIN following_artists AS FA ON FA.artist_id = AB.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;

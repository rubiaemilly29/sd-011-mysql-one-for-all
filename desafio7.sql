CREATE VIEW perfil_artistas AS
SELECT A.artist AS artista, 
AB.album AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artists AS A
INNER JOIN SpotifyClone.albuns AS AB
ON A.artist_id = AB.artist_id
INNER JOIN SpotifyClone.followers AS F
ON A.artist_id = F.artist_id
GROUP BY AB.album_id
ORDER BY seguidores DESC, artista, album;

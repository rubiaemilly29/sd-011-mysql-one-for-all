CREATE VIEW perfil_artistas AS
SELECT 
sar.artista AS artista,
sal.album AS album,
COUNT(ss.artista_id) AS seguidores
FROM SpotifyClone.artista AS sar
INNER JOIN SpotifyClone.seguidores AS ss
ON sar.artista_id = ss.artista_id
INNER JOIN SpotifyClone.album AS sal
ON sal.artista_id = sar.artista_id
GROUP BY ss.artista_id, sal.album
ORDER BY COUNT(ss.artista_id) DESC, sar.artista, sal.album;

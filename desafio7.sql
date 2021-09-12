CREATE VIEW perfil_artistas AS
SELECT CONCAT(A.first_name,' ', A.last_name) AS artista,
AL.album AS album, COUNT(H.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albuns AS AL
ON A.artista_id = AL.artista_id
INNER JOIN SpotifyClone.seguidores AS H
ON AL.artista_id = H.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;

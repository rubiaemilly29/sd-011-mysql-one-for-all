CREATE VIEW perfil_artistas AS
SELECT a.artista AS artista, al.album AS album,
COUNT(ua.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.usuario_artista AS ua
ON ua.artista_id = a.artista_id
INNER JOIN SpotifyClone.album AS al
ON al.artista_id = a.artista_id
GROUP BY album
ORDER BY seguidores DESC, artista, album;

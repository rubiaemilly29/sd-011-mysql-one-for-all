CREATE VIEW perfil_artistas AS
SELECT
a.artista AS artista,
al.album AS album,
count(s.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo as s
ON al.artista_id = s.artista_id
GROUP BY al.album, a.artista
ORDER BY seguidores DESC, artista, album;

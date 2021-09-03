CREATE VIEW perfil_artistas AS
SELECT ar.artista_name AS artista,
al.album_name AS album,
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.seguidores AS s
ON s.artista_id = ar.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
-- SELECT * FROM perfil_artistas;

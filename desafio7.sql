CREATE VIEW perfil_artistas AS
SELECT ar.artista AS 'artista', a.album AS 'album', COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.artistas AS ar
ON ar.id = a.artista_id
INNER JOIN SpotifyClone.artistas_seguidos AS s
ON s.artista_id = a.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;

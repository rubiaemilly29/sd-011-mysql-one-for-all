SELECT ar.artista AS artista, al.album, COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al
ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.seguindo_artistas s
ON s.artista_id = ar.artista_id
GROUP BY al.album_id
ORDER BY seguidores DESC, artista, al.album;

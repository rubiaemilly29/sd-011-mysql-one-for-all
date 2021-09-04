CREATE VIEW perfil_artistas AS
SELECT a.artista AS 'artista', 
al.album AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguidores AS s
ON s.artista_id = a.artista_id
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = a.artista_id
GROUP BY artista, album
ORDER BY `seguidores` DESC, `artista`, `album`;

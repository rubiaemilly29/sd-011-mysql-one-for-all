CREATE VIEW perfil_artistas AS
SELECT a.artista AS 'artista', al.album AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON al.artista_id = s.artista_id
GROUP BY al.album, s.artista_id
ORDER BY COUNT(s.usuario_id) DESC, a.artista, al.album

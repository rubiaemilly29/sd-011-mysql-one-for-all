CREATE VIEW perfil_artistas AS
SELECT 
ar.artista_name AS 'artista', 
al.album_nome AS 'album',
COUNT(se.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al
INNER JOIN SpotifyClone.seguidores se
ON ar.artista_id = al.artista_id
AND ar.artista_id = se.artista_id
GROUP BY ar.artista_name, album_nome
ORDER BY `seguidores` DESC, `artista` ASC, `album`;
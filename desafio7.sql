CREATE VIEW perfil_artistas AS 
SELECT 
ar.artista AS 'artista',
al.album AS 'album',
COUNT(sa.usuario_id) AS 'seguidores'
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS ar ON ar.id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS sa ON sa.artista_id = ar.id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album` ;

CREATE VIEW perfil_artistas AS
SELECT
ar.artist_name AS 'artista',
al.album_name AS 'album',
COUNT(f.user_id) AS 'seguidores'
FROM artists AS ar
INNER JOIN album AS al
ON ar.id = al.id
INNER JOIN followers AS f
ON f.artist_id = ar.id
GROUP BY al.album_name, ar.artist_name
ORDER BY `seguidores` DESC, `artista`, `album`;

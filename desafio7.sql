CREATE VIEW perfil_artistas AS 
SELECT 
a.artist_name AS 'artista',
alb.album_name AS 'album',
COUNT(a.artist_name) AS 'seguidores'
FROM artist AS a
INNER JOIN album AS alb ON a.artist_id = alb.artist_id
INNER JOIN user_follow AS uf ON a.artist_id = uf.artist_id
GROUP BY a.artist_name, alb.album_name
ORDER BY COUNT(a.artist_name) DESC, a.artist_name;

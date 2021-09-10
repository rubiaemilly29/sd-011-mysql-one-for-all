CREATE VIEW perfil_artistas AS 
SELECT 
art.artist_name AS 'artista',
alb.album_name AS 'album',
(SELECT COUNT(*) FROM artist_followers WHERE artist_id = art.artist_id) AS 'seguidores'
FROM SpotifyClone.albuns AS alb

INNER JOIN SpotifyClone.artists as art 
ON alb.artist_id = art.artist_id

ORDER BY seguidores DESC, artista ASC;

-- Cool article: https://www.w3schools.com/mysql/func_mysql_avg.asp

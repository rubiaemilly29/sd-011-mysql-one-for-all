CREATE VIEW perfil_artistas AS 
SELECT a.artist_name as `artista`,
alb.album_name as `album`,
COUNT(fa.artist_id) as `seguidores`
FROM SpotifyClone.ALBUMS as alb
INNER JOIN SpotifyClone.ARTISTS as a
ON alb.artist_id = a.artist_id
INNER JOIN SpotifyClone.FOLLOWING_ARTISTS as fa
ON a.artist_id = fa.artist_id
GROUP BY alb.artist_id, alb.album_name
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;

CREATE VIEW `perfil_artistas` AS
SELECT a.artist_name AS `artista`,
al.album_name AS `album`,
COUNT(follow.artist_id) AS `seguidores`
FROM SpotifyClone.artists a
INNER JOIN SpotifyClone.album al
ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.followers follow
ON a.artist_id = follow.artist_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC;

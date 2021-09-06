CREATE VIEW `top_3_artistas` AS
SELECT a.artist_name AS `artista`, COUNT(*) AS `seguidores`
FROM SpotifyClone.artists a
INNER JOIN
SpotifyClone.followers f
ON a.artist_id = f.artist_id
GROUP BY f.artist_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;

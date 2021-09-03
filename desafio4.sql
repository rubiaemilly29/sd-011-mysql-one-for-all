CREATE VIEW top_3_artistas AS
SELECT a.artista AS 'artista', COUNT(usuario_id) AS 'seguidores'  FROM SpotifyClone.artistas_seguidos AS `as`
INNER JOIN SpotifyClone.artistas AS a
ON a.id = `as`.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC
LIMIT 3;

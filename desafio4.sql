CREATE VIEW top_3_artistas AS
SELECT ar.artista_name AS 'artista',
COUNT(se.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.seguidores se
ON ar.artista_id = se.artista_id
GROUP BY ar.artista_name
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
--

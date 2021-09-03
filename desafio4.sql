CREATE VIEW top_3_artistas AS
SELECT a.artista_nome AS `artista`,
COUNT(*) AS `seguidores`
FROM spotifyclone.artistas AS a
INNER JOIN spotifyclone.seguidores AS s
ON a.artista_id = s.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC LIMIT 3;

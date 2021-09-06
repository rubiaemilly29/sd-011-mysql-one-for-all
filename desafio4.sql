CREATE VIEW top_3_artistas AS SELECT
art.artista_nome AS `artista`,
COUNT(seg.artista_id) AS `seguidores`
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.seguindo_artistas AS seg
ON art.artista_id = seg.artista_id
GROUP BY art.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;

CREATE VIEW top_3_artistas AS SELECT
t2.nome_artista AS `artista`,
COUNT(t1.id_usuario) AS `seguidores`
FROM SpotifyClone.seguidores AS t1
INNER JOIN SpotifyClone.artistas AS t2
ON t1.id_artista = t2.id_artista
GROUP BY t2.nome_artista
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;

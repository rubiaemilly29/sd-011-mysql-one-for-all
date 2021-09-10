CREATE VIEW top_3_artistas AS
SELECT artista_nome as 'artista',
COUNT(*) as 'seguidores'
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.artistas_seguidores AS a_seguidores
ON artistas.artista_id = a_seguidores.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;

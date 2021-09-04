CREATE VIEW top_3_artistas AS
SELECT a.artista, COUNT(ars.usuario_id) `seguidores`
FROM artistas_seguidos ars
INNER JOIN artistas a
ON a.artista_id = ars.artista_id
GROUP BY a.artista
ORDER BY seguidores DESC, a.artista
LIMIT 3;

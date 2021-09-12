CREATE VIEW top_3_artistas AS
SELECT a.artista AS 'artista', COUNT(sa.artista_id) AS 'seguidores'
FROM seguindo_artistas AS sa
INNER JOIN artistas AS a ON a.artista_id = sa.artista_id
GROUP BY a.artista
ORDER BY seguidores DESC, artista LIMIT 3;

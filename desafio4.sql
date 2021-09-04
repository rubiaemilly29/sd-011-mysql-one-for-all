CREATE VIEW top_3_artistas AS
SELECT a.artista_nome AS artista,
COUNT(*) AS seguidores
FROM spotifyclone.artistas AS a
INNER JOIN spotifyclone.seguindo_artistas AS sa
ON sa.artista_id = a.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

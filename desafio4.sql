CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS artista,
COUNT(*) AS seguidores
FROM artistas AS a
INNER JOIN seguidores AS s
ON a.id_artista = s.id_artista
GROUP BY artista
ORDER BY seguidores DESC, artista LIMIT 3;

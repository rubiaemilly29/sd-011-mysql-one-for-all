CREATE VIEW top_3_artistas AS 
SELECT a.nome_artista AS artista,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas a
INNER JOIN c.seguindo_artistas AS seguindo
ON a.artista_id = seguindo.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

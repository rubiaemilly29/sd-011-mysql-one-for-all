CREATE VIEW top_3_artistas AS 
SELECT a.artista AS artista, COUNT(b.artistaId) AS seguidores FROM artistas AS a
INNER JOIN seguindo AS b
ON a.artistaId = b.artistaId
GROUP BY a.artista
ORDER BY seguidores DESC
LIMIT 3;

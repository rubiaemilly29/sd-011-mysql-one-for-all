CREATE VIEW top_3_artistas AS
SELECT A.artista AS artista,
COUNT(*) AS seguidores
FROM Artistas as A
INNER JOIN Seguindo_Artistas AS SA
  ON SA.artista_id = A.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

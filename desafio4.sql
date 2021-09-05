CREATE VIEW top_3_artistas AS
SELECT A.artista AS artista,
COUNT(SA.artista_id) AS seguidores
FROM artistas A
INNER JOIN seguindo_artistas SA ON SA.artista_id = A.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3; 

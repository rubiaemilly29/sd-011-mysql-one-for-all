CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS artista, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON a.artista_id = s.artista_id
GROUP BY a.nome_artista
ORDER BY 2 DESC, 1 ASC
LIMIT 3;

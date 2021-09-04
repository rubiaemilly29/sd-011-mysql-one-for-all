CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS artistas,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguidores AS s
ON a.id_artista = s.id_artista
GROUP BY artistas
ORDER BY seguidores DESC, artistas LIMIT 3;

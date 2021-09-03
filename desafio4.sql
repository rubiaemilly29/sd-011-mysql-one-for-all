CREATE VIEW top_3_artistas AS
SELECT A.artista_nome AS artista,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.seguidores AS S
ON A.artista_id = S.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista LIMIT 3;

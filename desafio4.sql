CREATE VIEW top_3_artistas AS
SELECT A.artista AS artista,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.seguindo AS S
ON S.artista_id = A.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;

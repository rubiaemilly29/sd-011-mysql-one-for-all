CREATE VIEW top_3_artistas AS
SELECT
Sa.artista,
COUNT(Ss.artista_id) AS seguidores
FROM SpotifyClone.artista AS Sa
INNER JOIN SpotifyClone.seguidores AS Ss
ON Sa.artista_id = Ss.artista_id
GROUP BY Ss.artista_id
ORDER BY COUNT(Ss.artista_id) DESC, Sa.artista
LIMIT 3;

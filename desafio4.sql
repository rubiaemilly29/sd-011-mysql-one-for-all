CREATE VIEW top_3_artistas AS
SELECT
a.artista AS artista,
count(s.usuario_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.seguindo AS s
ON a.artista_id = s.artista_id
GROUP BY a.artista
ORDER BY seguidores DESC, artista
LIMIT 3;

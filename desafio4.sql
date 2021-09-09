CREATE VIEW top_3_artistas AS
SELECT
a.nome_artista AS artista,
COUNT(sa.id_usuario) AS seguidores
FROM SpotifyClone.seguindo_artistas AS sa
INNER JOIN SpotifyClone.artistas AS a
ON sa.id_artista = a.id_artista
GROUP BY sa.id_artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;

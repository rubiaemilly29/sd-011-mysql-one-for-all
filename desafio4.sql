CREATE VIEW top_3_artistas AS
SELECT CONCAT(A.first_name, ' ', A.last_name) AS artista,
COUNT(S.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.seguidores AS S
ON A.artista_id = S.artista_id
GROUP BY  S.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;

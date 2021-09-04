CREATE VIEW top_3_artistas AS
SELECT ar.nome AS artista, COUNT(*) AS seguidores FROM SpotifyClone.seguindo_artistas AS sa
INNER JOIN SpotifyClone.artistas AS ar ON ar.artista_id = sa.artista_id
GROUP BY sa.artista_id
ORDER BY seguidores DESC, artista
LIMIT 3;

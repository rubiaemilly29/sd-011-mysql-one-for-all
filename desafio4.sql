CREATE VIEW top_3_artistas AS SELECT
  artista_nome AS artista, COUNT(usuario_id) AS seguidores
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.artistas_seguidores AS seguidos
ON artistas.artista_id = seguidos.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista_nome LIMIT 3;

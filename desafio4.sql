CREATE VIEW top_3_artistas AS
SELECT a.artista_name AS artista, COUNT(s.usuario_id) AS seguidores FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguidores AS s
ON s.artista_id = a.artista_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = s.usuario_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
-- SELECT * FROM top_3_artistas;

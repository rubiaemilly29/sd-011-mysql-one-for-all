CREATE VIEW top_3_artistas AS
SELECT nome AS 'artista',
(SELECT COUNT(*) FROM SpotifyClone.seguindo_artistas AS sa
WHERE sa.artista_id = a.artista_id)
AS `seguidores`
FROM SpotifyClone.artistas AS a
ORDER BY `seguidores` DESC, nome
LIMIT 3;

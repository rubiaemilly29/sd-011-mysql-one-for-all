CREATE VIEW top_3_artistas AS
SELECT a.nome AS 'artista',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON a.artista_id = s.artista_id
GROUP BY a.nome
ORDER BY `seguidores` DESC, a.nome LIMIT 3;

CREATE VIEW SpotifyClone.top_3_artistas AS
SELECT a.artista AS 'artista',
COUNT(u.usuario_id) AS 'seguidores' 
FROM SpotifyClone.Usuario AS u
INNER JOIN SpotifyClone.Seguidores AS s ON s.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.Artista AS a ON s.artista_id = a.artista_id
GROUP BY 1
ORDER BY 2 DESC, 1 ASC
LIMIT 3;

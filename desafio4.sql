CREATE VIEW top_3_artistas AS
SELECT 
b.nome_artista AS artista, 
COUNT(usuario_id) AS seguidores
FROM SpotifyClone.Historico_Seguidores AS a
INNER JOIN SpotifyClone.Artistas AS b
ON a.artista_id = b.artista_id
GROUP BY b.nome_artista
ORDER BY COUNT(usuario_id) DESC, b.nome_artista LIMIT 3;

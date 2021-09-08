CREATE VIEW top_3_artistas AS
SELECT artista.nome_artista AS 'artista',
COUNT(seguir_historico.artista_id) AS 'seguidores'
FROM SpotifyClone.seguir_historico AS seguir_historico
INNER JOIN SpotifyClone.artista AS artista
ON seguir_historico.artista_id = artista.artista_id
GROUP BY seguir_historico.artista_id
ORDER BY COUNT(seguir_historico.artista_id) DESC, artista.nome_artista
LIMIT 3;

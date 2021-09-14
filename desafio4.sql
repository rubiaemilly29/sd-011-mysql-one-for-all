CREATE VIEW top_3_artistas AS
SELECT ar.nome_artista AS 'artista',
COUNT(fl.id_artistas) AS 'seguidores'
FROM SpotifyClone.seguindo_artistas AS se
INNER JOIN SpotifyClone.historico_reproducoes AS hs ON us.artista_id = us.artista_id 
GROUP BY fl.id_artistas
ORDER BY seguidores DESC,
 artista ASC
LIMIT 3; 

CREATE VIEW top_3_artistas AS
SELECT ar.artista AS artista, COUNT(ar.artista) AS seguidores  
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.artistas_seguindo as sa
ON ar.artista_id = sa.artista_id
GROUP BY ar.artista
ORDER BY COUNT(sa.artista_id) DESC, ar.artista ASC
LIMIT 3;

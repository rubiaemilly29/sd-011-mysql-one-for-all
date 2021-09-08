CREATE VIEW top_3_artistas AS 
SELECT 
A.artista AS artista,
COUNT(C.usuario_id) AS nome
FROM SpotifyClone.Artistas A
INNER JOIN SpotifyClone.seguindo_artistas C ON C.artista_id = A.artista_id
GROUP BY A.artista
ORDER BY COUNT(C.usuario_id) DESC, A.artista
LIMIT 3;
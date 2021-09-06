CREATE VIEW top_3_artistas AS 
SELECT 
A.nome AS artista,
count(B.id_artista) AS seguidores
FROM SpotifyClone.Artista A
LEFT JOIN SpotifyClone.Seguidores B ON B.id_artista = A.id
GROUP BY A.nome
ORDER BY COUNT(B.id_artista) DESC, A.nome
LIMIT 3;

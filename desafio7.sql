CREATE VIEW perfil_artistas AS 
SELECT 
A.nome AS artista,
B.nome AS album,
COUNT(C.id_artista) AS seguidores
FROM SpotifyClone.Artista A
INNER JOIN SpotifyClone.Album B ON B.id_artista = A.id
LEFT JOIN SpotifyClone.Seguidores C ON C.id_artista = A.id
GROUP BY A.nome, B.nome
ORDER BY COUNT(C.id_artista) DESC, A.nome, B.nome;

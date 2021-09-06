USE SpotifyClone;

CREATE VIEW perfil_artistas AS 
SELECT 
A.nome AS artista,
B.nome AS album,
COUNT(C.id_artista) AS seguidores
FROM Artista A
INNER JOIN Album B ON B.id_artista = A.id
LEFT JOIN Seguidores C ON C.id_artista = A.id
GROUP BY A.nome, B.nome
ORDER BY COUNT(C.id_artista) DESC, A.nome, B.nome;

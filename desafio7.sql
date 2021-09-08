CREATE VIEW perfil_artistas AS 
SELECT 
A.artista AS artista,
B.album AS album,
COUNT(C.artista_id) AS seguidores
FROM SpotifyClone.Artistas A
INNER JOIN SpotifyClone.Albuns B ON B.artista_id = A.artista_id
INNER JOIN SpotifyClone.seguindo_artistas C ON C.artista_id = A.artista_id
GROUP BY A.artista, B.album
ORDER BY COUNT(C.artista_id) DESC, A.artista, B.album;

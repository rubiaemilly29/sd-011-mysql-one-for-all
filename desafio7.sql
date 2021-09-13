CREATE VIEW perfil_artistas AS
SELECT A.artista AS artista,
Ab.album AS album,
COUNT(SA.usuario_id) AS seguidores
FROM Artistas AS A
INNER JOIN Albuns AS Ab
ON A.artista_id = Ab.artista_id
INNER JOIN Seguindo_Artistas AS SA
ON Ab.artista_id = SA.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;

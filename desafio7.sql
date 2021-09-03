CREATE VIEW perfil_artistas AS 
SELECT a.artista AS artista, b.album AS album, 
(SELECT COUNT(b.artistaId) FROM seguindo AS b
WHERE a.artistaId = b.artistaId
GROUP BY a.artista) AS seguidores 
FROM artistas AS a
INNER JOIN albuns AS b
ON a.artistaId = b.artistaId
ORDER BY seguidores DESC, artista, album;

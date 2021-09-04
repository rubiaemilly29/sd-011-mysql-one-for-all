CREATE VIEW perfil_artista AS
SELECT ar.nome AS artista, al.album AS album, 
(SELECT COUNT(s.artista_id) 
FROM SpotifyClone.seguindo AS s
WHERE s.artista_id = ar.artista_id) AS seguidores
FROM SpotifyClone.artistas as ar
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = ar.artista_id
ORDER BY seguidores DESC, artista, album;

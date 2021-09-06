CREATE VIEW perfil_artistas AS
SELECT a.artista_nome AS artista,
b.album_nome AS album,
(
SELECT COUNT(artista_id) FROM SpotifyClone.artistas_seguidos AS C
WHERE c.artista_id = b.artista_id
) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albums AS b
ON b.artista_id = a.artista_id
ORDER BY 3 DESC, 1 ASC, 2 ASC;

CREATE VIEW perfil_artistas AS
SELECT
a.artista,
b.album,
(SELECT COUNT(artista_id) FROM seguindo AS c WHERE a.artista_id = c.artista_id) AS seguidores
FROM artistas AS a
INNER JOIN albuns AS b
ON a.artista_id = b.artista_id
INNER JOIN seguindo AS c
ON c.artista_id = a.artista_id
GROUP BY a.artista, b.album, a.artista_id;

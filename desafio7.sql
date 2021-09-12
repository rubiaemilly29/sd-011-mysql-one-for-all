CREATE VIEW perfil_artistas AS
SELECT ar.artista AS artista,
al.album AS album,
(
SELECT COUNT(*) FROM seguindo_artistas
WHERE artista_id = ar.artista_id
) AS seguidores
FROM albuns AS al
INNER JOIN artistas AS ar ON al.artista_id = ar.artista_id
ORDER BY seguidores DESC, artista, album;

CREATE VIEW perfil_artistas AS
SELECT ar.artista_nome AS artista,
al.album_nome AS album,
COUNT(*) AS seguidores
FROM spotifyclone.artistas AS ar
INNER JOIN spotifyclone.albuns AS al
INNER JOIN spotifyclone.seguindo_artistas AS sa
ON al.artista_id = ar.artista_id
AND sa.artista_id = ar.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;

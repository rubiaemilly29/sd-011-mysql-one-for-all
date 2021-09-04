CREATE VIEW perfil_artistas AS
SELECT 
ar.nome AS artista,
al.nome AS album,
COUNT(*) AS seguidores 
FROM SpotifyClone.seguindo_artistas AS sa
INNER JOIN SpotifyClone.artistas AS ar ON ar.artista_id = sa.artista_id
INNER JOIN SpotifyClone.albums AS al ON al.artista_id = ar.artista_id
GROUP BY al.album_id
ORDER BY seguidores DESC, artista, album;

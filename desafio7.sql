CREATE VIEW perfil_artistas AS
SELECT ar.artista AS artista, al.album AS album,
(SELECT COUNT(*) FROM SpotifyClone.Seguidores WHERE artista_id = ar.artista_id) AS seguidores
FROM SpotifyClone.Albuns AS al 
INNER JOIN SpotifyClone.Artistas as ar ON al.artista_id = ar.artista_id
ORDER BY seguidores DESC, artista ASC, album ASC;

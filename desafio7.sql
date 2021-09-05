CREATE VIEW perfil_artistas AS
SELECT ar.artista AS artista, al.album AS album,
COUNT(ars.artista_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.artistas_seguindo as ars
ON ar.artista_id = ars.artista_id
GROUP BY al.album_id
ORDER BY COUNT(ars.artista_id) DESC, ar.artista ASC;

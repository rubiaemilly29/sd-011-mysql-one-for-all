CREATE VIEW perfil_artistas AS
SELECT art.artista AS artista,
alb.album AS album,
COUNT(ats.artista_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.artistas_seguindo as ats
ON art.artista_id = ats.artista_id
GROUP BY alb.album_id
ORDER BY COUNT(ats.artista_id) DESC, art.artista ASC;

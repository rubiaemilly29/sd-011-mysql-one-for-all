CREATE VIEW perfil_artistas AS
SELECT
art.artista_nome AS artista,
alb.album_nome AS album,
COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS seg
ON seg.artista_id = alb.artista_id
GROUP BY seg.artista_id, alb.album_nome
ORDER BY seguidores DESC, artista ASC, album ASC;

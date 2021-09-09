CREATE VIEW perfil_artistas AS SELECT
  artistas AS artista,
  album AS album,
COUNT(s.usuario_id) AS seguidores 
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.album AS alb 
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguidores AS s
ON s.artista_id = art.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;

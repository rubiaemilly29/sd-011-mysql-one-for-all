CREATE VIEW `perfil_artistas` AS 
SELECT 
  a.artista AS artista,
  alb.album AS album,
  COUNT(s.usuario_id) AS seguidores
FROM artistas AS a
INNER JOIN albuns AS alb
ON a.artista_id = alb.artista_id
INNER JOIN seguidores AS s
ON a.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;

CREATE VIEW `top_3_artistas` AS
SELECT a.artista AS artista,
  (SELECT COUNT(*) FROM seguidores AS s WHERE s.artista_id = a.artista_id) AS seguidores
FROM artistas AS a
ORDER BY seguidores DESC, artista
LIMIT 3;

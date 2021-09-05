CREATE VIEW top_3_artistas AS
SELECT 
artista,
(SELECT COUNT(artista_id) FROM seguindo AS a WHERE a.artista_id = b.artista_id) AS seguidores
FROM artistas AS b
ORDER BY seguidores DESC, artista
LIMIT 3;

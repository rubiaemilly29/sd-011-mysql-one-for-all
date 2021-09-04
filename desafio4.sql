CREATE VIEW top_3_artistas AS
SELECT a.nome AS artista, 
(SELECT COUNT(s.artista_id) 
FROM SpotifyClone.seguindo AS s
WHERE s.artista_id = a.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
ORDER BY seguidores DESC, artista
LIMIT 3;

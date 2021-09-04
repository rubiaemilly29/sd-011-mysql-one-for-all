CREATE VIEW perfil_artistas AS
SELECT a.artista, ab.album, COUNT(ars.artista_id) `seguidores`
FROM albuns ab
INNER JOIN artistas a
ON a.artista_id = ab.artista_id
INNER JOIN artistas_seguidos ars
ON ars.artista_id = a.artista_id
GROUP BY ab.album, a.artista
ORDER BY COUNT(ars.artista_id) DESC, a.artista, ab.album;

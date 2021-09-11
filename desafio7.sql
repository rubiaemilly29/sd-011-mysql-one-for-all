CREATE VIEW perfil_artistas AS
SELECT a.nome_artista, b.album, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.album AS b
ON a.artista_id = b.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON b.artista_id = s.artista_id
GROUP BY s.artista_id, b.album
ORDER BY 3 DESC, 1 ASC, 2 ASC;

CREATE VIEW perfil_artistas AS
SELECT a.artista AS artista, ab.album AS album, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS ab
ON a.artista_id = ab.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON a.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;

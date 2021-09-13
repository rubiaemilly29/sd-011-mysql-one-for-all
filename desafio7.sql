CREATE VIEW perfil_artistas AS
SELECT a.artista, al.album, COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas as s
ON al.artista_id = s.artista_id
GROUP BY a.artista, al.album
ORDER BY seguidores DESC, artista ASC, album ASC;

CREATE VIEW perfil_artistas AS
SELECT
Sa.artista,
Sal.album,
COUNT(Ss.artista_id) AS seguidores
FROM SpotifyClone.artista AS Sa
INNER JOIN SpotifyClone.seguidores AS Ss
ON Sa.artista_id = Ss.artista_id
INNER JOIN SpotifyClone.album AS Sal
ON Sal.artista_id = Sa.artista_id
GROUP BY Ss.artista_id, Sal.album
ORDER BY COUNT(Ss.artista_id) DESC, Sa.artista, Sal.album;

CREATE VIEW perfil_artistas AS
SELECT A.artista AS artista,
AB.album AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albuns AS AB
INNER JOIN SpotifyClone.seguindo AS S
ON A.artista_id = AB.album_id
AND A.artista_id = S.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;

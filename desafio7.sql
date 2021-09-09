CREATE VIEW perfil_artistas AS
SELECT t1.artista AS 'artista',
t2.album AS 'album',
COUNT(t3.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas AS t1
INNER JOIN SpotifyClone.albuns AS t2
ON t1.artista_id = t2.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS t3
ON t2.artista_id = t3.artista_id
GROUP BY t3.artista_id, t2.album
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
